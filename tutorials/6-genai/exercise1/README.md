# Import OData Query Builder
In this section, you will create a free SAP Build Apps account in the AppGyver Community Edition, import a project from file, and start calling the created CAP service by leveraging a GPT-generated OData call.

## Create AppGyver Community Edition account
For creating a simple and easy to build user interface for communicating with the GPT model, we're using SAP Build Apps, SAP's low-code/no-code tool that was formerly called SAP AppGyver. For the purpose of this hands-on exercise, we're using the AppGyver Community Edition and you'll create your free account right now and here by clicking on [AppGyver Community Edition](https://agcommunity.design-time.eu10.apps.build.cloud.sap).

On the sign in screen, click on Register, unless you already have an AppGyver Community Edition login. In the next screen, provide your first and last name, your email address for account verification, and United States as the Country/Region. Once your account is verified with the email you'll receive, login using your newly set credentials. 

## Import provided project from file
Once in, click on Create New, New from File, and provide a name for your application, for example ASUG Tech Connect, and use the FILE to import the prepared project that contains the logic and screens for the UI.

On the Home page, click on the Submit button in the UI Canvas design time to show the logic in the Logic Canvas in the lower portion of the screen. Click on Create record in the logic flow for the Submit button and inspect the properties and outputs on the upper right. Click on Custom object under Record properties for the resource chatCompletion to investigate how the chat with the GPT model is put together. The so-called temperature for the AI model that controls the accuracy/creativity is set to 0.5 per default and by double-clicking on Custom list, you can see both the context we provide to the system for creating the prompt and the user chat text coming from the application.

Let's have a closer look to the role "system" to see what context we're providing:
- You are an assistant that creates OData V4 queries and parameters from plain English.
- Assistant does not provide any explanation and the response should be an OData V4 URI string.
- Do not add any spaces.
- Limit all queries to a maximum of 100 records.
- Here are some example READ queries from a material availability service that handles Sales Order, Material Master, and Available to Promise functions:
  - /material-availability/SalesOrder
  - /material-availability/SalesOrder?$filter=Material%20eq%20'TG11'
  - /material-availability/Material
  - /material-availability/Material?$top=50&$filter=Material%20eq%20'FG126'
  - /material-availability/Material('FG126')
  - /material-availability/MaterialPlant(Material='TG11',Plant='1010')
  - /material-availability/MaterialPlant(Material='E001',Plant='3010')
  - /material-availability/calcMaterialAvailability(material='TG11',plant='1010')
  - /material-availability/calcMaterialAvailabilityAt(material='TG11',plant='1010',timestamp=2023-07-04T07:00:00Z)>"

As you can see, we're exactly providing the examples that were listed in LINK, without providing more documentation. In a real scenario, you would want to embed with the whiole API documentation and as many soecific examples as possible. 

## Launch your SAP Build Apps app
Let's see how far we can get with these examples and the power of the GPT model. Now it's on you to try it out. Close the popup, don't save any changes if you didn't intend to change anything, and click on Launch in the top bar to test your little application. Select Open preview protal, then Open web preview, and select your SAP Build Apps app. This is how easy you can put together enterprise-grade applications with SAP Build Apps!

Run some sample queries to try out the logic. Remember, whatever you put into the text field is being sent to the GPT model with the instructions above and should return an OData query. We have implemented error branches that return a message in case the prompt does not fit the intended function. Click on Assistant's Instructions to see what this tool can and can't do.

Let's try it out with the below sample queries in natural language and don't yet use the checkbox for adding the data to the next prompt, as that will send you to exercise 2. Let's first understand what is happening here. Every natural language prompt you submit will be translated into an OData query if it can and fits the narrative, otherwise you'll see an error message. When clicking on the OData URL link, it wilkl run the query against the SAP S/4HANA system and provides the JSON return, which can be emoty or contain the material according to the query.

Try it out and start with simple queries like below, try to understand the created OData query and click on it to show the JSON return:
- What is the availability of material FG126?
- How much of the FG materials are available?
- How much of the TG materials are available in plant 1010?
- List all sales orders with material TG11

The JSON return shows you the actual data of a conncted SAP S/4HANA system. 

## Modifying the LLM prompt
Before we continue going into exercise 2, to further analyze that material data, let's play around a little bit here and try various prompts to see how the system reacts. One important thing to note as we did not provide more documentation of the used APIs is certainky its limitations and how to overcome when those details are not embedded to the model. 

For example, why does the following prompt lead to an empty set of material?
- What is the availability of all of the materials with type FERT?

FERT material is the type of material that are finished products. In the SAP backend system it is calles material type. The API however, calls that same attrubute product type, as you can verify in the API description in the Business Accelerator Hub (LINK).

To fix this for our prompt, let's add this explanation to the system part of the engineered prompt by adding a sentence like "Type or material type are called product type in the API."

Try it out and also some own prompts. Are you ready for further analysis of the data? Let's get ready for exercise 2.
