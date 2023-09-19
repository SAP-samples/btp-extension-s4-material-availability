using SalesOrderA2X as SalesOrdersSRV from './external/SalesOrderA2X';
using ProductMasterA2X as ProductSRV from './external/ProductMasterA2X';
using BasicProductAvailabilityInfo as BasicAvailabilitySrv from './external/BasicProductAvailabilityInfo.cds';

@path:'/material-availability'
service MaterialAvailability
{
    @readonly
    entity SalesOrder as projection on SalesOrdersSRV.A_SalesOrderItem
    {
        key SalesOrder,
        key SalesOrderItem,
        SalesOrderItemText,
        Material,
        RequestedQuantity,
        RequestedQuantityUnit,
        SDDocReferenceStatus,
        ProductionPlant,
        OriginalPlant,
        StorageLocation,
        DeliveryPriority,
        DeliveryStatus,
        SDProcessStatus
    };

    @readonly
    entity Material as projection on ProductSRV.A_Product
    {
        key Product as Material,
        ProductType,
        LastChangeDate,
        CountryOfOrigin,
        ProductGroup,
        ItemCategoryGroup,
        ProductHierarchy,
        to_Description,
        to_Plant
    };

    @readonly
    entity MaterialDescription as projection on ProductSRV.A_ProductDescription
    {
        key Product as Material,
        key Language,
        ProductDescription as Description
    };
 
    extend ProductSRV.A_ProductPlant with
    {
        virtual AvailableQuantity: BasicAvailabilitySrv.AvailabilityRecord:AvailableQuantityInBaseUnit;
        virtual AvailableQuantityBaseUnit: BasicAvailabilitySrv.AvailabilityRecord:BaseUnit;
    };

    @readonly
    entity MaterialPlant as projection on ProductSRV.A_ProductPlant 
    {
        key Product as Material,
        key Plant,
        MRPType,
        AvailabilityCheckType,
        to_PlantMRPArea,
        AvailableQuantity,
        AvailableQuantityBaseUnit
    };


    @readonly
    entity MaterialPlantMRPArea as projection on ProductSRV.A_ProductPlantMRPArea
    {
        *
    };

    // trigger the CalculateAvailabilityTimeseries function from the basic availability info S/4HANA service
    function calcMaterialAvailability (material: String, plant: String) returns array of BasicAvailabilitySrv.AvailabilityRecord; 

    // trigger the DetermineAvailabilityAt function from the basic availability info S/4HANA service
    function calcMaterialAvailabilityAt (material: String, plant: String, timestamp: Timestamp) returns BasicAvailabilitySrv.AvailabilityRecord;
}
