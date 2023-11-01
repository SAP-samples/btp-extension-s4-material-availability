[![REUSE status](https://api.reuse.software/badge/github.com/SAP-samples/btp-extension-s4-material-availability)](https://api.reuse.software/info/github.com/SAP-samples/btp-extension-s4-material-availability)

# ASUG Tech Connect 2023 Hands-on Lab "ChatGPT and SAP: Leveraging SAP BTP and Microsoft Azure AI"

## Exercise Purpose
This tutorial is the exercise desciption for the ASUG Tech Connect Hands-on Lab session "ChatGPT and SAP: Leveraging SAP BTP and Microsoft Azure AI" and intended to be used in class with instructors on-site, in case of questions. Please follow all the steps and read the instructions carefully. In case of questions or when you get stuck, try to discuss and troubleshoot with your fellow learners and raise your hand in case you want support from one of the instructors.

## SAP Business Scenario
The business use case is part of the [Lead to Cash process](https://api.sap.com/valueflow/LC1C1-SVFSolutionProcess) which spans multiple business applications including order fullfillment and a key component of the process is material availability, that is, how much of a product is available and from where, being up to date and accessible in real-time. You will leverage SAP Business Application Studio (BAS) and the SAP Cloud Application Programming (CAP) model to consume the product availability service on SAP S/4HANA for a unified visibility by creating an SAP BTP extension. You will be able to access the material availability data via an oData service or show it in a UI (optional exercise) as part of the SAP BTP extension that you'll create.

## ChatGPT and Generative AI
With the efforts of building the Material Availability scenario that are in detail lined out in this [SAP Discovery Center mission](https://discovery-center.cloud.sap/missiondetail/4356), you can query the system by following the oData syntax and API documentation. As Large Language Models (LLMs) are great in translating from one language into another, they're also working well in creating oData queries according to rules that they're either fed via prompt engineering or embeddings. In this exercise, we will use prompt engineering and a Microsoft Azure AI reference architecture to get the job done by a GPT model in the same way as you would ask ChatGPT (first API call). We'll take that generated oData query and run it against the SAP S/4HANA system with the created Material Availability CAP service (second API call), and finally have the JSON result interpreted and summarized by GPT (third API call).

## SAP Build Apps
For creating a simple user interface to interact with our Material Availabiltiy "ChatGPT", we're using SAP Build Apps (formerly AppGyver) through the free AppGyver Community Edition. This application prompts the user to provide a question about material availability in natural language, engineers the prompt for the Microsoft Azure GPT call, executes the resulting oData web service call, and summarizes the output leveraging the GPT CAP service.

![Microsoft Azure OpenAI Reference Architecture for SAP BTP](./AzureOpenAI_ReferenceArchitecture.png)

## Exercise Steps
0. PRE-WORK (hopefuly already done): [Create SAP Business Technology Platform (SAP BTP) Trial account](https://developers.sap.com/tutorials/appstudio-onboarding.html)
1. [Add SAP Business Application Studio (BAS) for development](https://github.com/SAP-samples/btp-extension-s4-material-availability/blob/asugTC23/tutorials/2-setup/README.md)
2. [Create Material Availability CAP (Cloud Application Programing model) service](https://github.com/SAP-samples/btp-extension-s4-material-availability/blob/asugTC23/tutorials/3-basic/1-create-service/README.md)
3. [Create free SAP Build Apps (AppGyver) Community Edition account](https://forums.appgyver.com/t/appgyver-community-edition-announcement/22006)
4. Build an SAP Build Apps application for Material Availability using the prebuilt GPT CAP service
5. OPTIONAL: [Create a Material Dashboard UI Application for a classic view on the data](https://github.com/SAP-samples/btp-extension-s4-material-availability/blob/asugTC23/tutorials/3-basic/2-create-ui-application/README.md)

## License
Copyright (c) 2023 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSE) file.
