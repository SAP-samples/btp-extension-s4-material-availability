# Lead to Cash Troubleshooter

Now it's getting interesting: We'll see how Generative AI can provide insight into buiness data and help resolve real business challenges. In this exercise, you will prompt the app with natural language questions about things that have gone wrong. Think about missing or incomplete data, anomalies in the material data or sales orders. This surely will show the power of LLMs as it can help you summarize the data for business users in an easy to understand way and point out things to look out for.

Once you have the OData query result of Exercise 1, click on the http link to run the OData API call to get the information out of the SAP S/4HANA backend system. The result is being shown as a JSON. Mark the check box **Add this data to my next prompt** to continue with the data in the provided result by clicking on the **Take me to Exercise #2** icon.

This step takes you to a new screen where the JSON output from the API call is being displayed and you can do further queries for summarization in natural language or anomaly detection. If no data is being diplayed, it means no data was returned. In that case, click on the **Reset** button in the upper left and try a new first prompt. Depending on the query from Exercise 1, the app will either show as **Material Troubleshoter** or **SalesOrder troubleshooter**.

Try the examples below for material data and sales order data to further analyize your data:
- Material
  - Summarize the most requested materials and any patterns or anomalies
  - What are my 5 most popular materials?
  - What patterns do you find around missing or incomplete data?
- Sales Order
  - Summarize the list of sales orders and highlight any anomalies or missing data
  - List sales orders with requested quantity more than 100 units and order it from highest to lowest
  - What patterns do you find around missing or incomplete data?
  - What is the distribution of requested material quantity like?
  - Provide a hierarchical representation of Product Group, Product Type, and Material

Now it's time to try your own queries and find out more about the data in our SAP S/4HANA test system! With the **Reset** button on the upper left you can always go back and start a new initial query and pull material or sales order data from the SAP S/4HANA backend system.
