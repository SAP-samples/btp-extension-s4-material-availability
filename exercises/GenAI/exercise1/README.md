# Import OData Query Builder
In this exercise, you will create a free SAP Build Apps account in the **AppGyver Community Edition**, import a project from file, and start calling the created CAP service by leveraging a GPT-generated OData call.

## Create AppGyver Community Edition account
For creating a simple and easy-to-build user interface for communicating with the GPT model, we're using **SAP Build Apps**, SAP's low-code/no-code tool that was formerly called AppGyver. For the purpose of this hands-on exercise, we're using the SAP Build Apps Community Edition and you'll create your free account right now by clicking on [SAP Build Apps Community Edition](https://agcommunity.design-time.eu10.apps.build.cloud.sap).

On the sign in screen, click on **Register**, unless you already have a Community Edition login. In the next screen, provide your first and last name, your email address for account verification, and United States as the Country/Region. Once your account is verified with the email you'll receive, log in using your newly set credentials. 

## Import provided project from file
Once in, click on **Create New**, **New from File**, and provide a name for your application, for example ASUG Tech Connect, and use the FILE to import the [prepared project](../../../Tech%20Connect%20V2.zip.gpg) that contains the base logic and screens for the UI.

On the **Home page**, select the **Submit** button in the UI Canvas design time and click on **Add Logic to BUTTON 1** in the bottom to show the logic in the **LOGIC CANVAS** in the lower portion of the screen. Select **Create record** in the logic flow for the Submit button and inspect the properties and outputs in the upper right. Click on **Custom object** under Record properties for the resource **chatCompletion** to investigate how the chat with the GPT model is put together. The so-called temperature for the AI model that controls the accuracy/creativity is set to 0.5 per default and by clicking on **Custom list**, you can see both the context we provide to the system for creating the prompt and the user chat text coming from the application.

Let's have a closer look at the role "system" to see what context the pre-built app is providing:
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

As you can see, we're exactly providing the examples that were listed in [Step 8 of the first exercise](https://github.com/SAP-samples/btp-extension-s4-material-availability/blob/main/tutorials/3-basic/1-create-service/README.md#test-the-service-from-sap-business-application-studio), without providing more documentation. In a real scenario, you would embed the entire API specification and as many specific examples as possible to provide an even better learning and baseline for the LLM.

## Launch your SAP Build Apps app
Let's see how far we can get with these examples and the power of the GPT model. Now it's on you to try it out. Close the popup, don't save any changes if you didn't intend to change anything, and click on **LAUNCH** in the top bar to test your application. Select **Open preview portal**, then **Open web preview**, and select your SAP Build Apps app. This is how easy you can put together applications with SAP Build Apps!

Run some sample queries to try out the logic. Remember, whatever you put into the text field is being sent to the GPT model with the instructions above and should return an OData query. We have implemented error branches that return a message in case the prompt does not fit the intended function. You can investigate this and the entire flow in the design time later. Now, click on **Assistant's Instructions** to see what this tool can and can't do.

Let's give it a try with the below sample queries in natural language and don't use the checkbox for adding the data to the next prompt quite yet, as that will send you to Exercise 2. Let's first understand what is happening here. Every natural language prompt you submit will be translated into an OData query if it can and fits the narrative, otherwise you'll see an error message. When clicking on the OData URL link, it will run the query against the backend SAP S/4HANA system and provide the JSON response, which can be empty if you've generated a query that returns no data or it can contain materials, sales orders, or availability information, according to the query.

Try it out and start with simple queries like the ones below, read the created OData query to get a better understanding of what was created and click on it to show the JSON response:
- What is the availability of material FG126?
- How much of the FG materials are available?
- How much of the TG materials are available in plant 1010?
- List all sales orders with material TG11

The JSON returned shows the actual data of a connected SAP S/4HANA system. 

## Modifying the LLM prompt
Before we continue going to Exercise 2 for further analysis of the material data, let's play around a little bit more and try various prompts to see how the system reacts. One important thing to note as we did not provide more documentation of the used APIs, is certainly its limitations and how to overcome when those details are not embedded with the model. 

For example, why does the following prompt lead to an empty set of material?
- What is the availability of all of the materials with type FERT?

FERT material is a type of material that represent finished products. In the SAP backend system it is called material type. In the API however, the same attribute is called product type. You can verify this in the API description within the [SAP Business Accelerator Hub](https://api.sap.com/api/API_PRODUCT_SRV).

To fix this for our prompt, let's add an additional explanation to the system part of the engineered prompt of **chatCompletion** by adding a sentence like **Replace 'Type' or 'MaterialType' with 'ProductType'** in the OData query.
On the **Home page**, select the **Submit** button in the UI Canvas design time to show its logic in the **LOGIC CANVAS** in the lower portion of the screen (click on **Add logic** on the bottom if you don't see it). select **Create record** in the logic flow for the Submit button and click on **Custom object** under Record properties for the resource **chatCompletion** and click on **Custom list** and modify the **content** for role system. Make sure to save everything in the popups and then also in the app builder at the end.

Try it out by refreshing the preview app again and get creative with some of your own prompts. Have some fun and get ready for further analysis of the data. Let's then get ready for Exercise 2.
