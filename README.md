[![REUSE status](https://api.reuse.software/badge/github.com/SAP-samples/btp-extension-s4-material-availability)](https://api.reuse.software/info/github.com/SAP-samples/btp-extension-s4-material-availability)

# ASUG Tech Connect 2023 Hands-on Lab "ChatGPT and SAP: Leveraging SAP BTP and Microsoft Azure AI"

Welcome to ASUG Tech Connect 2023 in New Orleans! We're very happy to see your interest in our hands-on session and your desire to learn more about how to connect LLMs like OpenAI's GPT model to your SAP system.

## Exercise Purpose
This tutorial is the exercise desciption for the ASUG Tech Connect Hands-on Lab session "ChatGPT and SAP: Leveraging SAP BTP and Microsoft Azure AI" and intended to be used in class with instructors on-site, in case of questions. Please follow all the steps and read the instructions carefully. In case of questions or when you get stuck, try to discuss and troubleshoot with your fellow learners and raise your hand in case you want support from one of the instructors.

## SAP Business Scenario
The business use case that this hands-on session is built on is part of the [Lead to Cash process](https://api.sap.com/valueflow/LC1C1-SVFSolutionProcess), which spans multiple business applications including order fullfillment. A key component of the process is material availability, that is, how much of a product is available and from where, being up to date and accessible in real-time. In this exercises, you will leverage SAP Business Application Studio (BAS) and the SAP Cloud Application Programming (CAP) model to consume the product availability service on SAP S/4HANA for a unified visibility by creating an SAP BTP extension. You will be able to access the material availability data via an oData service or show it in a UI (optional exercise) as part of the SAP BTP extension that you'll create.

## Adding Generative AI
With the efforts of building the Material Availability scenario that are described in detail in this [SAP Discovery Center mission](https://discovery-center.cloud.sap/missiondetail/4356), you can query the system by following the OData syntax and API documentation. As Large Language Models (LLMs) are great in translating from one language into another, they're also working well in creating OData queries according to provided rules. Those additions can either be fed via prompt engineering or embeddings, the latter being done via leveraging SAP HANA Cloud Vector Engine, which also serves to keep your business data private. In this exercise, we will use prompt engineering and a Microsoft Azure AI reference architecture to get the job done by a GPT model API, just in the same way as you would ask ChatGPT. This will be the first API call. We'll then take that generated OData query and run it against the SAP S/4HANA system with the created Material Availability CAP service that you will create first. This will be the second API call. Finally, we'll have the JSON result interpreted and summarized by the GPT model resulting in the third and last API call.

## SAP Build Apps
For creating a simple user interface and the process logic for our Material Availability Chatbot, we'll be using SAP Build Apps, SAP's low-code/no-code tool that formerly was called SAP AppGyver. For this purpose, we'll be using the free AppGyver Community Edition in addition to the SAP BTP trial account that you'll be using for creating the CAP service in BAS. This SAP Build application prompts the user to provide a question about material availability in natural language, engineers the prompt for the Microsoft Azure GPT call, executes the resulting oData web service call, and summarizes the output leveraging the GPT CAP service.

![Microsoft Azure OpenAI Reference Architecture for SAP BTP](./AzureOpenAI_ReferenceArchitecture.png)

## Exercise Steps
- PRE-WORK (ideally already done): [Setup your SAP BTP Trial account](https://developers.sap.com/tutorials/appstudio-onboarding.html)
- PREP (build your backend service): [Create Material Availability CAP service](https://github.com/SAP-samples/btp-extension-s4-material-availability/blob/asugTC23/tutorials/3-basic/1-create-service/README.md)
- EXERCISE 1 (import the pre-built project): [Import OData Query Builder](https://forums.appgyver.com/t/appgyver-community-edition-announcement/22006)
- EXERCISE 2: (summarize results and find issues): Material Troubleshooter
- EXERCISE 3 (put it all together): Build an end user application
- OPTIONAL: [Create a Material Dashboard UI Application for a classic view on the data](https://github.com/SAP-samples/btp-extension-s4-material-availability/blob/asugTC23/tutorials/3-basic/2-create-ui-application/README.md)

## License
Copyright (c) 2023 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSE) file.
