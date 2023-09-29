# Introduction to the Advanced Scope 
In the **Advanced Scope** of the mission, you will use **SAP Cloud for Customer** and **SAP S/4HANA** to enable the material availability scenario on a live system. Then you will consume the live data from the SAP S/4HANA system into the CAP application you created in the Basic Scope of the mission.

Finally, you will deploy the Material Availability OData service to **SAP BTP, Cloud Foundry** environment, to provide an additional "Vendor Available to Promise (ATP)" capability.

## Pre-Requisites
To complete the **Advanced Scope** you are required to have the following SAP products / licenses:
- [SAP BTP Cloud Foundry runtime environment](https://discovery-center.cloud.sap/serviceCatalog/cloud-foundry-runtime?tab=roadmap&region=all)
    - To get started with the Free Tier plan and how to enable Cloud Foundry ➜ ([click here](https://discovery-center.cloud.sap/missiondetail/3005/3010))
- [SAP Integration Suite](https://discovery-center.cloud.sap/serviceCatalog/integration-suite?region=all)
- Access to an SAP S/4HANA Public Cloud or SAP S/4HANA system. You can get your own SAP S/4HANA Fully Activated Appliance trial system through the SAP Cloud Appliance Library (CAL) ➜ ([click here](https://www.sap.com/documents/2019/04/4276422b-487d-0010-87a3-c30de2ffd8ff.html))
- Access to an SAP Cloud for Customer system is required to configure the **Pricing in Sales Quote Follow up Scenario** in SAP Integration Suite. Without one, you can follow along to see the required integration points, configuration of pre-packaged integration flows, and a video demo of the sales side of the process.

## Step-by-Step
To complete the **Advanced Scope**, please follow the respective cards or check out the linked README documents. 

1. First, setup **SAP Cloud for Customer and SAP S/4HANA systems** with the requisite SAP Best Practices scenarios for Order to Cash. ➜ ([click here](../1-setup-s4hana-system/README.md))
2. Next, update the CAP application to **consume live data from the SAP S/4HANA system**. ➜ ([click here](../2-consume-live-data/README.md))
3. Finally, **deploy the service to SAP BTP, Cloud Foundry environment**. ➜ ([click here](../3-deploy/README.md))
