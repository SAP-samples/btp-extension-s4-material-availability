"use strict";(self.webpackChunkbtp_extension_s4_material_availability=self.webpackChunkbtp_extension_s4_material_availability||[]).push([[535],{3905:(e,t,a)=>{a.d(t,{Zo:()=>c,kt:()=>h});var n=a(7294);function i(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}function r(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function o(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?r(Object(a),!0).forEach((function(t){i(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):r(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function s(e,t){if(null==e)return{};var a,n,i=function(e,t){if(null==e)return{};var a,n,i={},r=Object.keys(e);for(n=0;n<r.length;n++)a=r[n],t.indexOf(a)>=0||(i[a]=e[a]);return i}(e,t);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);for(n=0;n<r.length;n++)a=r[n],t.indexOf(a)>=0||Object.prototype.propertyIsEnumerable.call(e,a)&&(i[a]=e[a])}return i}var l=n.createContext({}),p=function(e){var t=n.useContext(l),a=t;return e&&(a="function"==typeof e?e(t):o(o({},t),e)),a},c=function(e){var t=p(e.components);return n.createElement(l.Provider,{value:t},e.children)},d="mdxType",u={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},m=n.forwardRef((function(e,t){var a=e.components,i=e.mdxType,r=e.originalType,l=e.parentName,c=s(e,["components","mdxType","originalType","parentName"]),d=p(a),m=i,h=d["".concat(l,".").concat(m)]||d[m]||u[m]||r;return a?n.createElement(h,o(o({ref:t},c),{},{components:a})):n.createElement(h,o({ref:t},c))}));function h(e,t){var a=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var r=a.length,o=new Array(r);o[0]=m;var s={};for(var l in t)hasOwnProperty.call(t,l)&&(s[l]=t[l]);s.originalType=e,s[d]="string"==typeof e?e:i,o[1]=s;for(var p=2;p<r;p++)o[p]=a[p];return n.createElement.apply(null,o)}return n.createElement.apply(null,a)}m.displayName="MDXCreateElement"},4184:(e,t,a)=>{a.r(t),a.d(t,{assets:()=>l,contentTitle:()=>o,default:()=>u,frontMatter:()=>r,metadata:()=>s,toc:()=>p});var n=a(7462),i=(a(7294),a(3905));const r={sidebar_position:8},o="Integrate with SAP S/4HANA",s={unversionedId:"project-panel/advanced/setup-s4hana-system/README",id:"project-panel/advanced/setup-s4hana-system/README",title:"Integrate with SAP S/4HANA",description:"In the Basic Scope, you ran the Material Availability dashboard in SAP Business Application Studio, using a connection to the SAP Business Accelerator Hub SAP S/4HANA Cloud sandbox environment. Using SAP S/4HANA Cloud for live connectivity is then just the straightforward task of updating your destination properties. If you are using an SAP S/4HANA Fully Activated Appliance from the SAP Cloud Appliance Library, or your own on-premise instance, there are additional steps required to establish live connectivity.",source:"@site/docs/project-panel/4-advanced/1-setup-s4hana-system/README.md",sourceDirName:"project-panel/4-advanced/1-setup-s4hana-system",slug:"/project-panel/advanced/setup-s4hana-system/",permalink:"/btp-extension-s4-material-availability/project-panel/advanced/setup-s4hana-system/",draft:!1,tags:[],version:"current",sidebarPosition:8,frontMatter:{sidebar_position:8},sidebar:"tutorialSidebar",previous:{title:"Introduction to the Advanced Scope",permalink:"/btp-extension-s4-material-availability/project-panel/advanced/introduction-advanced-scope/"},next:{title:"Update Material Availability Service to Consume Live Data from SAP S/4HANA",permalink:"/btp-extension-s4-material-availability/project-panel/advanced/consume-live-data/"}},l={},p=[{value:"Activate required services",id:"activate-required-services",level:2},{value:"Configure Cloud Connector",id:"configure-cloud-connector",level:2},{value:"Set Up Principle Propagation (Optional)",id:"set-up-principle-propagation-optional",level:2},{value:"Refer to SAP Best Practices for creation of sample data",id:"refer-to-sap-best-practices-for-creation-of-sample-data",level:2},{value:"Configure SAP Cloud for Customer and SAP Integration Suite, Cloud Integration",id:"configure-sap-cloud-for-customer-and-sap-integration-suite-cloud-integration",level:2},{value:"View the demo scenario",id:"view-the-demo-scenario",level:2}],c={toc:p},d="wrapper";function u(e){let{components:t,...r}=e;return(0,i.kt)(d,(0,n.Z)({},c,r,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"integrate-with-sap-s4hana"},"Integrate with SAP S/4HANA"),(0,i.kt)("p",null,"In the ",(0,i.kt)("strong",{parentName:"p"},"Basic Scope"),", you ran the Material Availability dashboard in SAP Business Application Studio, using a connection to the SAP Business Accelerator Hub SAP S/4HANA Cloud sandbox environment. Using SAP S/4HANA Cloud for live connectivity is then just the straightforward task of updating your destination properties. If you are using an SAP S/4HANA Fully Activated Appliance from the SAP Cloud Appliance Library, or your own on-premise instance, there are additional steps required to establish live connectivity. "),(0,i.kt)("h2",{id:"activate-required-services"},"Activate required services"),(0,i.kt)("p",null,"The OData services used in the Material Availability dashboard are also available for SAP S/4HANA on-premise and private cloud editions. "),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},"Sales Order Service: ",(0,i.kt)("a",{parentName:"li",href:"https://api.sap.com/api/OP_API_SALES_ORDER_SRV_0001"},"https://api.sap.com/api/OP_API_SALES_ORDER_SRV_0001")),(0,i.kt)("li",{parentName:"ul"},"Product Master Service: ",(0,i.kt)("a",{parentName:"li",href:"https://api.sap.com/api/OP_API_PRODUCT_SRV_0001"},"https://api.sap.com/api/OP_API_PRODUCT_SRV_0001")),(0,i.kt)("li",{parentName:"ul"},"Basic Product Availability Info Service: ",(0,i.kt)("a",{parentName:"li",href:"https://api.sap.com/api/OP_API_PRODUCT_AVAILY_INFO_BASIC_0001"},"https://api.sap.com/api/OP_API_PRODUCT_AVAILY_INFO_BASIC_0001"))),(0,i.kt)("p",null,"There is also a Sales Order simulation API that you can leverage in case you don't have access to an SAP Cloud for Customer or SAP Sales Cloud tenant."),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},"Sales Order - Simulate: ",(0,i.kt)("a",{parentName:"li",href:"https://api.sap.com/api/OP_API_SALES_ORDER_SIMULATION_SRV_0001"},"https://api.sap.com/api/OP_API_SALES_ORDER_SIMULATION_SRV_0001"))),(0,i.kt)("p",null,"You can activate the needed services in your SAP S/4HANA system by performing the following steps:"),(0,i.kt)("ol",null,(0,i.kt)("li",{parentName:"ol"},"Logon via SAP GUI."),(0,i.kt)("li",{parentName:"ol"},"Execute the ",(0,i.kt)("inlineCode",{parentName:"li"},"/IWFND/MAINT_SERVICE")," transaction."),(0,i.kt)("li",{parentName:"ol"},"Select ",(0,i.kt)("strong",{parentName:"li"},"Add Service"),".")),(0,i.kt)("p",null,(0,i.kt)("img",{alt:"Add Service",src:a(1437).Z,width:"2248",height:"1256"})),(0,i.kt)("ol",{start:4},(0,i.kt)("li",{parentName:"ol"},"If you don't know the system alias, you can use the search button. Select or input the active SAP System Alias, which is called ",(0,i.kt)("strong",{parentName:"li"},"LOCAL_TGW")," in the fully activated appliance.")),(0,i.kt)("p",null,(0,i.kt)("img",{alt:"System Alias",src:a(2060).Z,width:"1206",height:"1020"})),(0,i.kt)("ol",{start:5},(0,i.kt)("li",{parentName:"ol"},"Locate the services based on a wildcard search in the ",(0,i.kt)("strong",{parentName:"li"},"External Service Name")," field, select it, and click ",(0,i.kt)("strong",{parentName:"li"},"Add Selected Services"),". Remember to add all 4 external services, as listed in the ",(0,i.kt)("a",{parentName:"li",href:"/btp-extension-s4-material-availability/project-panel/advanced/setup-s4hana-system/#activate-required-services"},"Activate Required Services")," summary.")),(0,i.kt)("p",null,(0,i.kt)("img",{alt:"Add Selected Services",src:a(4366).Z,width:"2294",height:"1342"})),(0,i.kt)("ol",{start:6},(0,i.kt)("li",{parentName:"ol"},"Set the package assignment to ",(0,i.kt)("strong",{parentName:"li"},"Local Object")," and click the checkmark.")),(0,i.kt)("p",null,(0,i.kt)("img",{alt:"Package Assignment",src:a(3740).Z,width:"1722",height:"1290"})),(0,i.kt)("ol",{start:7},(0,i.kt)("li",{parentName:"ol"},"Confirm the service is activated successfully.")),(0,i.kt)("p",null,(0,i.kt)("img",{alt:"Confirm Service",src:a(8360).Z,width:"870",height:"330"})),(0,i.kt)("ol",{start:8},(0,i.kt)("li",{parentName:"ol"},"Test the newly activated services via the ",(0,i.kt)("strong",{parentName:"li"},"/IWFND/GW_CLIENT")," transaction. Allow any SAP GUI Security prompt that opens.")),(0,i.kt)("p",null,(0,i.kt)("img",{alt:"SAP GUI Security prompt",src:a(9970).Z,width:"1218",height:"558"})),(0,i.kt)("ol",{start:9},(0,i.kt)("li",{parentName:"ol"},"Enter the path from any of the services you just activated into the ",(0,i.kt)("strong",{parentName:"li"},"Request URI")," field and select ",(0,i.kt)("strong",{parentName:"li"},"Execute"),":")),(0,i.kt)("p",null,(0,i.kt)("inlineCode",{parentName:"p"},"/sap/opu/odata/sap/API_SALES_ORDER_SIMULATION_SRV?$format=json")),(0,i.kt)("p",null,(0,i.kt)("img",{alt:"SAP Gateway Client",src:a(1382).Z,width:"2304",height:"1344"})),(0,i.kt)("h2",{id:"configure-cloud-connector"},"Configure Cloud Connector"),(0,i.kt)("p",null,(0,i.kt)("a",{parentName:"p",href:"https://developers.sap.com/tutorials/btp-app-ext-service-cloud-connector.html"},"Configure Systems in Cloud Connector")),(0,i.kt)("h2",{id:"set-up-principle-propagation-optional"},"Set Up Principle Propagation (Optional)"),(0,i.kt)("p",null,"By default, your SAP BTP destination will be created using Basic Authentication and a dedicated Technical User (e.g. BPINST if you are using the SAP S/4HANA Fully Activated Appliance). However, for productive use of an extension, it is important that a user's credentials in BTP are correctly passed down to the backend applications that it relies on. To configure principle propagation, follow this blog post on the topic:"),(0,i.kt)("p",null,(0,i.kt)("a",{parentName:"p",href:"https://blogs.sap.com/2021/09/06/setting-up-principal-propagation/"},"Setting up Principal Propagation")),(0,i.kt)("h2",{id:"refer-to-sap-best-practices-for-creation-of-sample-data"},"Refer to SAP Best Practices for creation of sample data"),(0,i.kt)("p",null,"In the SAP S/4HANA Fully Activated Appliance (client 100) you will find business processes that have already been set up for you to use, along with the corresponding sample data related to products and sales orders. Your company's own development and production environments of SAP S/4HANA would also have these business processes configured and ready for use."),(0,i.kt)("p",null,"If you need to create additional stock or sales orders you can follow the ",(0,i.kt)("strong",{parentName:"p"},"Test scripts")," for scope item 6LJ, or its dependent scope items called out in the ",(0,i.kt)("strong",{parentName:"p"},"Business Conditions")," section of the test script, on your CAL system from the SAP GUI:"),(0,i.kt)("p",null,(0,i.kt)("a",{parentName:"p",href:"https://me.sap.com/processnavigator/SolP/6LJ"},"Available-to-Promise Processing (6LJ)")),(0,i.kt)("h2",{id:"configure-sap-cloud-for-customer-and-sap-integration-suite-cloud-integration"},"Configure SAP Cloud for Customer and SAP Integration Suite, Cloud Integration"),(0,i.kt)("p",null,"As there is no trial option for SAP Cloud for Customer, this use case mission will explain the integration points between SAP business applications and show you how to interact with the relevant API that enable the underlying functionality. In this section, we will also refer you to the specific integration packages that enable this scenario in your productive landscape."),(0,i.kt)("p",null,"There are 2 primary integration packages for SAP Cloud for Customer and SAP S/4HANA, depending on whether you utilize the public cloud or on-premise version:"),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("a",{parentName:"li",href:"https://api.sap.com/package/SAPHybrisCloudforCustomerIntegrationwithSAPS4HANA/overview"},"SAP Cloud for Customer Integration with SAP S/4HANA")),(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("a",{parentName:"li",href:"https://api.sap.com/package/SAPHybrisCloudforCustomerIntegrationwithSAPS4HANACloud/overview"},"SAP Cloud for Customer Integration with SAP S/4HANA Cloud"))),(0,i.kt)("p",null,"Each package consists of multiple scenarios, from replication of master data, transactions, and real-time insights related to material availability and pricing."),(0,i.kt)("h2",{id:"view-the-demo-scenario"},"View the demo scenario"),(0,i.kt)("p",null,"You can watch a demo of the ",(0,i.kt)("strong",{parentName:"p"},"Sales Quote External Pricing with S/4HANA Sales Order Fulfillment")," process and how the integration of systems is facilitated by SAP Integration Suite and pre-packaged integration content:"),(0,i.kt)("p",null,(0,i.kt)("a",{parentName:"p",href:"https://sapvideoa35699dc5.hana.ondemand.com/?entry_id=1_y9e8buvc"},"Video Demo")),(0,i.kt)("p",null,"Similarly, if you configured the ",(0,i.kt)("a",{parentName:"p",href:"https://api.sap.com/api/API_SALES_ORDER_SIMULATION_SRV"},"Sales Order - Simulate (A2X)")," service in your SAP S/4HANA Fully Activated Appliance, you can test the technical integration used by SAP Sales Cloud to request pricing and product availability from SAP S/4HANA."),(0,i.kt)("p",null,"Invoking the service with the sample parameters mentioned in the main ",(0,i.kt)("a",{parentName:"p",href:"https://help.sap.com/docs/SAP_S4HANA_CLOUD/03c04db2a7434731b7fe21dca77440da/b64937ce2692427594ee794ad033b8b3.html?locale=en-US"},"help documentation")," returns pricing or availability information depending on the associations included in the request body:"),(0,i.kt)("p",null,"Simulate pricing"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre"},'POST /sap/opu/odata/sap/API_SALES_ORDER_SIMULATION_SRV/A_SalesOrderSimulation\nContent-Type: application/json\nAccept: application/json\n\n{\n    "SalesOrderType": "OR",\n    "SalesOrganization": "1010",\n    "DistributionChannel": "10",\n    "OrganizationDivision": "00",\n    "SoldToParty": "10100001",\n    "PurchaseOrderByCustomer": "SalesOrder Simulation",\n    "to_Pricing": {},\n    "to_PricingElement": [],\n    "to_Item": [\n        {\n            "SalesOrderItem": "10",\n            "Material": "TG11",\n            "RequestedQuantity": "1"\n        }\n    ]\n}\n')),(0,i.kt)("p",null,"Simulate availability"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre"},'POST /sap/opu/odata/sap/API_SALES_ORDER_SIMULATION_SRV/A_SalesOrderSimulation\nContent-Type: application/json\nAccept: application/json\n\n{\n    "SalesOrderType": "OR",\n    "SalesOrganization": "1010",\n    "DistributionChannel": "10",\n    "OrganizationDivision": "00",\n    "SoldToParty": "10100001",\n    "PurchaseOrderByCustomer": "SalesOrder Simulation",\n     "to_Item": [\n        {\n            "SalesOrderItem": "10",\n            "Material": "TG11",\n            "RequestedQuantity": "1",\n            "to_ScheduleLine": []\n        }\n    ]\n}\n')),(0,i.kt)("p",null,"Comprehensive examples are found in the ",(0,i.kt)("a",{parentName:"p",href:"https://help.sap.com/docs/SAP_S4HANA_CLOUD/03c04db2a7434731b7fe21dca77440da/356340f1cd584bb899a5260115d24f13.html?locale=en-US"},"Examples for Sales Order - Simulate")," section of the SAP S/4HANA documentation."))}u.isMDXComponent=!0},4366:(e,t,a)=>{a.d(t,{Z:()=>n});const n=a.p+"assets/images/add-selected-services-b02c9d10fb4c8ee15a417fcc9a777832.png"},1437:(e,t,a)=>{a.d(t,{Z:()=>n});const n=a.p+"assets/images/add-service-3a78ea9f88e663c95fca6863989d1ed6.png"},1382:(e,t,a)=>{a.d(t,{Z:()=>n});const n=a.p+"assets/images/gateway-client-14dbf36a2d39e9d038f5e7b94ffe21ec.png"},9970:(e,t,a)=>{a.d(t,{Z:()=>n});const n=a.p+"assets/images/local-directory-write-40d293ea41036e818f69717edb933734.png"},3740:(e,t,a)=>{a.d(t,{Z:()=>n});const n=a.p+"assets/images/local-object-19e1e2153e3e3b241def7b40330031c1.png"},8360:(e,t,a)=>{a.d(t,{Z:()=>n});const n=a.p+"assets/images/service-confirmation-bc49ec28682f3cc1d77581fa0479a85e.png"},2060:(e,t,a)=>{a.d(t,{Z:()=>n});const n=a.p+"assets/images/system-alias-0df6a8acf9fedc1e8619ddc4b5aa5ee3.png"}}]);