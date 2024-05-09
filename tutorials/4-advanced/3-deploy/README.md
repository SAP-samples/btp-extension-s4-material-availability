# Deploy The Material Availability Service to SAP BTP, Cloud Foundry
In this section, you will deploy the Material Availability service from your CAP project to [SAP BTP, Cloud Foundry](https://help.sap.com/docs/btp/sap-business-technology-platform/cloud-foundry-environment). 

This will expose your service, to provide an additional "Vendor Available to Promise (ATP)" capability (so others can also query the material availability status of your company as a vendor).

## Pre-requisites:
- You must have an SAP BTP subaccount with the Cloud Foundry environment enabled, and a Cloud Foundry space created in it.
- You must have a user with Space Developer role which is a member of this Cloud Foundry space.
- In case the Cloud Foundry space you would like to use is not under the SAP BTP subaccount which is subscribed to SAP Business Application Studio, make sure to copy the destination to SAP S/4HANA and configure connectivity to the Cloud Connector also from the SAP BTP subaccount hosting your Cloud Foundry space. 

## Prepare your project for production:
1. Open Terminal in your project root context and execute `cds add xsuaa --for production`. This will configure your service for [XSUAA-based authentication](https://discovery-center.cloud.sap/serviceCatalog/authorization-and-trust-management-service?region=all).

2. From the Explorer view, open the **package.json** file. For each required OData service, clone the `"[live]"` profile including the service credentials, into a new `"[production]"` profile.
   Final result should include:
   ```
    "cds": {
    "requires": {
      "SalesOrderA2X": {
        "kind": "odata-v2",
        "model": "srv/external/SalesOrderA2X",
        "[sandbox]": {
          . . .
        },
        "[live]": {
          . . .
        },
        "[production]": {
          "credentials": {
            "destination": "<DESTINATION NAME>",
            "path": "/sap/opu/odata/sap/API_PRODUCT_SRV/"
          }
        }
      },
      "ProductMasterA2X": {
        "kind": "odata-v2",
        "model": "srv/external/ProductMasterA2X",
        "[sandbox]": {
          . . .
        },
        "[live]": {
          . . .
        },
        "[production]": {
          "credentials": {
            "destination": "<DESTINATION NAME>",
            "path": "/sap/opu/odata/sap/API_PRODUCT_SRV/"
          }
        }
      },
      "BasicProductAvailabilityInfo": {
        "kind": "odata-v2",
        "model": "srv/external/BasicProductAvailabilityInfo",
        "[sandbox]": {
          . . .
        },
        "[live]": {
          . . .
        },
        "[production]": {
          "credentials": {
            "destination": "<DESTINATION NAME>",
            "path": "/sap/opu/odata/sap/API_PRODUCT_AVAILY_INFO_BASIC/"
          }
        }
      },
   ```
   Make sure to replace the `<DESTINATION NAME>` placeholder with the SAP BTP destination name as created in the previous section.

3. Make sure the `"name"` property in your package.json file includes only alphanumeric characters, "_" or "-". This to ensure the module names and application's xsappname that will be generated out of this name, will be valid in Cloud Foundry. For example, use the name: "material-availability".

4. From the Terminal, execute `cds add approuter --for production` to enhance the application with App Router that will act as a single point-of-entry gateway to route the service requests to. In particular, it ensures user login and authentication in combination with XSUAA when accessing through browser (for testing purposes). Skip this step in case you intend to deploy also the Fiori UI application since in this case you can use the UI application to login. 

4. Execute `npm update --package-lock-only` to freeze all dependencies, including transient ones. This is best practice for deployed applications.

5. Execute `cds add mta` to generate an mta.yaml descriptor file, configuring all the modules and services required for [MTA-based deployment](https://help.sap.com/docs/BTP/65de2977205c403bbc107264b8eccf4b/d04fc0e2ad894545aebfd7126384307c.html) of your CAP project.

6. Right-click the generated **mta.yaml** file, select **Open With...** and then select the **Text Editor** option. After the `resources` section in the file, add the following resources to add the destination and connectivity SAP BTP service instances and make them accessible from the deployed application: 
   ```
   resources:
     - name: material-availability-destination-service
       type: org.cloudfoundry.managed-service
       parameters:
         service: destination
         service-plan: lite
         
     - name: material-availability-connectivity
       type: org.cloudfoundry.managed-service
       parameters:
         service: connectivity
         service-plan: lite
   ```
   Then add these resources as required from the service module (for example: material-availability-srv):
   ```
   modules:
     - name: material-availability-srv
     . . .
       requires:
         - name: material-availability-auth
         - name: material-availability-destination-service
         - name: material-availability-connectivity
   ```
   Pay attention to indentation when editing the mta.yaml file.

   Skip the definition of the material-availability-destination-service resource in case you intend to deploy also the Fiori UI application, since it will be created for you when following the steps for deploying the Fiori UI application. Make sure to still define it as a required service from the material-availability-srv module.


For more information on preparing CAP project for production, see [here](https://cap.cloud.sap/docs/guides/deployment/to-cf#prepare-for-production).

Note: In this section, you will deploy only the service module in order to expose it as a Vendor API. 
To deploy also the Material Dashboard Fiori application and setup its access to the service endpoint, see the [end-to-end tutorial](https://developers.sap.com/tutorials/deploy-to-cf.html) for the necessary configurations in the mta.yaml file and on the Material Dashboard Fiori application. Use the "materialdashboard" name when following this tutorial, for the business solution name of the Approuter Configuration module and for the semantic object of the Fiori Launchapad Configuration.


## Deploy to Cloud Foundry:
1. Assemble the required modules into one MTA archive file by right clicking the **mta.yaml** file from the Explorer view, and select **Build MTA Project** option. The MTA archive files are created under the mta_archives folder in your project.
2. Expand the **mta_archives** folder and right click the appropriate `.mtar` file for deployment. From the context menu, select the **Deploy MTA Archive** option.
3. Once prompted, sign-in to Cloud Foundry with your user credentials or by using SSO and select the Cloud Foundry organization and space to which you would like to deploy your application modules.
4. Wait for the `Process finished.` output from the Terminal opened to perform the deployment operation.
5. Go to SAP BTP cockpit and access the Cloud Foundry space to which you deployed the application modules. From the **Applications** tab click on the App Router application name, for example: material-availability, and click on the link under the **Application Routes**.
6. Login with the same user you logged-in to the SAP BTP Cockpit.
7. Test the deployed service by adding the paths as you did in the previous section, in step 8 of [testing with the "live" profile](../../3-basic/1-create-service#test-the-service-from-sap-business-application-studio) from SAP Business Application Studio.
   Note: the access through the App Router application module is required only when accessing through browser, to allow UI-based login. When accessing the service from any other application or service, the entrypoint of the deployed service application (for example, material-availability-srv) should be used directly, with JWT token credentials, initiated by SAP BTP XSUAA service. In case the Fiori UI application was also deployed, access it to test also your service logic.

Congratulations! You have completed the **Advanced** scope and have your Material Availability Dashboard application ready, including UI, service logic and access to live SAP S/4HANA system. You also have the service available from Cloud Foundry as a downstream Vendor API. 

See the [Outlook](../../5-outlook/README.md) section for more post-deployment considerations, such as authentication and access by partners to your service and SAP S/4HANA system data. 
