const cds = require('@sap/cds');

module.exports = async (srv) => 
{            

   /**
    * Delegate READ requests and function calls to the external S/4HANA services 
    * (for main entities and also assiciated entities for navigation support):
    */
    
    const SalesOrdersSRV = await cds.connect.to("SalesOrderA2X");
    const ProductSRV = await cds.connect.to("ProductMasterA2X");
    const BasicAvailabilitySRV = await cds.connect.to("BasicProductAvailabilityInfo");
    
    srv.on('READ', 'SalesOrder', req => SalesOrdersSRV.run(req.query)); 

    // Implement read handler of MaterialPlant entity using delegation to the ProductSRV remote service 
    // and calculate material availability in each plant by triggering function from BasicAvailabilitySRV remote service:

    function calcMaterialAvailabilityAt (material, plant, timestamp) {
        const parameters = {
            Material: material,
            SupplyingPlant: plant,
            RequestedUTCDateTime: timestamp,
            ATPCheckingRule: "A" // See more information on ATP checking rules: https://help.sap.com/docs/SAP_S4HANA_ON-PREMISE/eedc1019283a438a8b73fdde490abc4f/2c24bf53d25ab64ce10000000a174cb4.html
        };
        return BasicAvailabilitySRV.send("DetermineAvailabilityAt", parameters);
    }

    function removeQueryColumns(columnsArray, name) {
        const columnIndex = columnsArray.findIndex(
            ({ ref }) => ref && ref[0] === name
        );
        if (columnIndex >= 0) {
            columnsArray.splice(columnIndex, 1); 
            return true;
        } 
        return false;
    }

    function removeQueryColumnSelectAll(columnsArray) {
        const columnIndex = columnsArray.findIndex(
            (item) => item === "*"
        );
        if (columnIndex >= 0) {
            columnsArray.splice(columnIndex, 1); 
            return true;
        } 
        return false;
    }

    async function addAvaiabilityData(plantItem, timestamp, selectAvailabilityColumns) {
        try {
            const availabilityRecord = await calcMaterialAvailabilityAt(plantItem.Material, plantItem.Plant, timestamp);
            if (selectAvailabilityColumns.AvailableQuantity) {
                plantItem.AvailableQuantity = availabilityRecord.AvailableQuantityInBaseUnit;
            }
            if (selectAvailabilityColumns.AvailabilityBaseUnit) {
                plantItem.AvailableQuantityBaseUnit = availabilityRecord.BaseUnit;
            }
        }
        catch (err) {
            console.log(`Error during material availability check: ${err}`);
            if (selectAvailabilityColumns.AvailableQuantity) {
                plantItem.AvailableQuantity = 0;
            }
            if (selectAvailabilityColumns.AvailabilityBaseUnit) {
                plantItem.AvailableQuantityBaseUnit = "N/A";
            }
        }  
    }

    function handlePlantSelectedProperties(columnsArray) {
        const selectAvailabilityColumns = {};
        // If no columns specified (implicitly select all MaterialPlant properties) or '*'' column is defined,
        // explicitly select all properties from ProductSRV.Plant entity  
        const allSelected = removeQueryColumnSelectAll(columnsArray);
        const columnsSize = columnsArray.length;
        if (columnsSize === 0 || allSelected) {
            columnsArray.push({ref: ['Material']});
            columnsArray.push({ref: ['Plant']});
            columnsArray.push({ref: ['MRPType']});
            columnsArray.push({ref: ['AvailabilityCheckType']});
            selectAvailabilityColumns.AvailableQuantity = true;
            selectAvailabilityColumns.AvailabilityBaseUnit = true;
        }
        // Otherwise - handle specifically selected properties by consumer
        // Note: 'Material' and 'Plant' are automatically added to selected properties since they are entity keys
        else {  
            // remove availability related columns from query as those are not provided from ProductSRV.Plant entity type
            selectAvailabilityColumns.AvailableQuantity = removeQueryColumns(columnsArray, "AvailableQuantity");
            selectAvailabilityColumns.AvailabilityBaseUnit = removeQueryColumns(columnsArray, "AvailableQuantityBaseUnit");  
              
        }
        return selectAvailabilityColumns;
    }

    srv.on('READ', 'MaterialPlant', async req => {
        // Handle reading MaterialPlant entity by selecting only its original properties from remote service
        // and calculating availability properties separately
        const select = req.query.SELECT;
        if (!select.columns) {
            select.columns = [];
        } 
        const selectAvailabilityColumns = handlePlantSelectedProperties(select.columns);
        const plantData = await ProductSRV.run(req.query);
        
        if (selectAvailabilityColumns.AvailableQuantity || selectAvailabilityColumns.AvailabilityBaseUnit) {
            // add availability calculated data for plant items
            //const timestamp = '2023-04-19T06:59:59Z';
            const timestamp = new Date().toISOString(); // use current time in EDM.DateTimeOffset format: 'YYYY-MM-DD`T`HH:MM:SS`Z`'
            if (Array.isArray(plantData)) {
                // read multiple entries result
                const addAvailabilityPromises = [];
                plantData.forEach(item => {
                    addAvailabilityPromises.push(
                        addAvaiabilityData(item, timestamp, selectAvailabilityColumns) 
                    );
                });
                await Promise.all(addAvailabilityPromises);
            }
            else {
                // read single entry result
                await addAvaiabilityData(plantData, timestamp, selectAvailabilityColumns);
            }
        }
        return plantData;
    });

    srv.on('READ', 'Material', async req => {
        const select = req.query.SELECT;
        if (select.columns) {
            const toPlantExpandIndex = select.columns.findIndex(
                ({ ref }) => ref && ref[0] === "to_Plant"
            );
            if (toPlantExpandIndex >= 0) {
                // Handle expand to_Plant by selecting only its original properties from remote service
                // and calculating availability properties separately:
                const toPlantExpandColumn =  select.columns[toPlantExpandIndex];
                const selectAvailabilityColumns = handlePlantSelectedProperties(toPlantExpandColumn.expand);          
                
                const materialData = await ProductSRV.run(req.query);               
                if (selectAvailabilityColumns.AvailableQuantity || selectAvailabilityColumns.AvailabilityBaseUnit) {
                    // add availability calculated data for expanded plant items
                    //const timestamp = '2023-04-25T06:59:59Z';
                    const timestamp = new Date().toISOString(); // use current time in EDM.DateTimeOffset format: 'YYYY-MM-DD`T`HH:MM:SS`Z`'
                    const addAvailabilityPromises = [];
                    if (Array.isArray(materialData)) {
                        // read multiple material entries result                       
                        materialData.forEach(materialItem => {
                            materialItem.to_Plant.forEach(plantItem => {
                                addAvailabilityPromises.push(
                                    addAvaiabilityData(plantItem, timestamp, selectAvailabilityColumns) 
                                );
                            });
                        });                        
                    }
                    else {
                        // read single material entry result
                        materialData.to_Plant.forEach(plantItem => {
                            addAvailabilityPromises.push(
                                addAvaiabilityData(plantItem, timestamp, selectAvailabilityColumns) 
                            );
                        });
                    }
                    await Promise.all(addAvailabilityPromises);
                }
                return materialData;
            }  
        }
        return ProductSRV.run(req.query);
    }); 
    
    srv.on('READ', 'MaterialDescription', req => ProductSRV.run(req.query)); 
    srv.on('READ', 'MaterialPlantMRPArea', req => ProductSRV.run(req.query));    

    //TODO: add navigation logic to 'product basic text' instead of description collection? (more informative text??)


    // Implement function "calcMaterialAvailability" by triggering the CalculateAvailabilityTimeseries function from the basic availability info service
    srv.on('calcMaterialAvailability', ({data:{material, plant}}) => {
        const parameters = {
            Material: material,
            SupplyingPlant: plant,
            ATPCheckingRule: "A" //hard-coded, we can think if should be a parameter
        };
        return BasicAvailabilitySRV.send("CalculateAvailabilityTimeseries", parameters);       
    });

    // Implement function "calcMaterialAvailabilityAt" by triggering the DetermineAvailabilityAt function from the basic availability info service
    // timestamp parameter is expected in EDM.DateTimeOffset format: 'YYYY-MM-DD`T`HH:MM:SS`Z`'
    srv.on('calcMaterialAvailabilityAt', ({data:{material, plant, timestamp}}) => {
        return calcMaterialAvailabilityAt(material, plant, timestamp);
    });
}
