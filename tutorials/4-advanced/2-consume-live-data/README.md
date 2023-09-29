# Update Material Availability Service to Consume Live Data from SAP S/4HANA
In this section, you will use the SAP S/4HANA system you configured in the previous step to consume live data from the Material Availability service. First, you will configure the connectivity from your SAP BTP subaccount which is subscribed to SAP Business Application Studio to the SAP S/4HANA system. Then you will consume this destination from the Material Availability service.

## Enable connection to SAP S/4HANA from SAP BTP and SAP Business Application Studio
1. Access the SAP BTP cockpit of your subaccount which is subscribed to SAP Business Application Studio.
2. Navigate to the **Connectivity** > **Destinations** section.
3. Create a new destination with the following properties:
   - Name: Provide a unique name for the destination. For example, you can use the SAP S/4HANA system name.
   - Type: HTTP
   - URL: The endpoint URL for your system, with the following pattern: `http://<system-host>:<system-port>`. Don't include any specific path.
   - ProxyType: OnPremise
   - Authentication: BasicAuthenication
   - User and Password of some technical user with read-only permissions (you can also use a demo user at this stage).
   
   
   In case you would like to define connectivity to SAP S/4HANA Cloud system, instead of SAP S/4HANA on-premise system, make sure to adjust the destination properties accordingly and follow-up this [guide](https://help.sap.com/docs/SAP_S4HANA_CLOUD/0f69f8fb28ac4bf48d2b57b9637e81fa/22bc724fd51a4aa4a4d1c5854db7e026.html).
   
   
   In this step we will use authentication to SAP S/4HANA using a technical user, as we will test the Material Availability service consuming this destination with no farther authentication. At later point - upon the productization and deployment of the Material Availability service, another authentication method for accessing SAP S/4HANA, such as principal propagation, can be considered.
4. Choose **New Property** and add the following additional properties, required for integration with SAP Business Application Studio:
   - WebIDEEnabled: true
   - HTML5.DynamicDestination: true
   - WebIDEUsage: odata_abap,dev_abap
   For more information see the [Connecting to External Systems documentation](https://help.sap.com/docs/bas/sap-business-application-studio/connecting-to-external-systems) of SAP Business Application Studio. 
5. Click on the **Save** button.
6. For accessing on-premise systems you are also required to configure your [Cloud Connector](https://help.sap.com/docs/connectivity/sap-btp-connectivity-cf/cloud-connector) with the endpoint URL defined in the SAP BTP destination. If you don't have any Cloud Connector to use, you can set up a Cloud Connector on your local machine/VM (which has access to your on-premise system endpoint). Make sure to configure the Cloud Connector with the SAP S/4HANA system endpoint for the appopriate SAP BTP subaccount, and to allow access for the system with path "/sap/opu/odata/" and all its sub-paths. 

## Configure the Material Availability service to consume external services through destination
1. From SAP Business Application Studio, open the **package.json** file from your project root folder.
2. For each required service, add a new **\[live\]** profile with a **credentials** section, with the following properties:
   - `"destination"`: defining the destination name from the SAP BTP subaccount to the SAP S/4HANA system.
   - `"path"`: defining the path to the OData service within the SAP S/4HANA system.
3. Verify your changes using the following reference code:
   - [Sales Order Service Sandbox Credentials](../../../package.json#L60-L65)
   - [Product Service Sandbox Credentials](../../../package.json#L75-L80)
   - [Availability Info Service Sandbox Credentials](../../../package.json#L90-L95)
   
   Make sure to replace the `<DESTINATION NAME>` placeholder with the SAP S/4HANA system destination name.

## Test from SAP Business Application Studio
1. Open the **.env** file from your project root folder, and add the following line to its content: 
   ```
   destinations=[{"name":"<DESTINATION NAME>","url":"http://<DESTINATION NAME>.dest","proxyHost":"http://127.0.0.1","proxyPort":"8887"}]
   ```
   Once again, make sure to replace the `<DESTINATION NAME>` placeholder with the SAP S/4HANA system destination name. 
   
   This configuration allows access to the SAP BTP destination, when running your application locally from SAP Business Application Studio.
2. Open the **.vscode/launch.json** file from your project, and clone the first launch configuration.
3. Rename the cloned configuration, for example to: "cds serve live data", and replace the "sandbox" argument with "live". See reference code [here](../../../.vscode/launch.json#L24-L40).
4. Open the **Run and Debug** perspective and start debugging using the launch configuration you created from the .vscode/launch.json file.
5. Once the application is running, press on the **Open in a New Tab** button from the notification. This will open a new browser tab for accessing the application process from the dev space localhost. You can also open this browser tab while the service is running from the Command Palette using the **Ports: Preview** command and selecting the 4004 port.
6. Test the service and UI application functionality, now consuming the live data. You can use similar queries and tests as you performed from the Basic scope. Only make sure to adjust the provided values to the data populated in the SAP S/4HANA system. 
