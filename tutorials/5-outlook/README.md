# Conclusion and Mission Outlook

If you made it this far, you will have developed and deployed an extension to the material availability service of SAP S/4HANA. You may have also integrated your SAP Sales Cloud and SAP S/4HANA systems using integration flows from SAP Integration Suite, or at least understand how they work together.

Below are a few final considerations related to 3rd party access of the API, such as by distribution or channel partners:

1. Secure your SAP Cloud Application Programming (CAP) service endpoint - Refer to the SAP CAP documentation [Authentication as Prerequisite](https://cap.cloud.sap/docs/guides/authorization#prerequisite-authentication) and ensure you prevent unauthorized access to your business API.
1. Add SAP API Management capabilities - Utilize API management policies to manage access to partners via Applications and API Keys. Refer to the related tutorial [Prepare SAP API Management for service account access](https://github.com/SAP-samples/btp-create-api-integrations/blob/main/02-LowCodeDevPortal/02-01-Prepare-api-proxy.md) for an example implementation.
1. Technical users v. principle propagation - In this use case, a service account is leveraged for the connectivity to SAP S/4HANA. In a productive scenario, you are likely to require a more robust authentication and authorization flow, where dedicated users bound to external identity providers, are utilized. In the [Advanced Scope - Integrate with SAP S/4HANA](../4-advanced/1-setup-s4hana-system/README.md#set-up-principle-propagation-optional) we referred you to an excellent blog post on the topic. You can also find detailed documentation and blog posts on runtime considerations for [Cloud Foundry](https://help.sap.com/docs/connectivity/sap-btp-connectivity-cf/principal-propagation) and [Kyma/Kubernetes](https://blogs.sap.com/2023/05/04/surviving-and-thriving-with-cap-destinations-and-the-transparent-proxy-for-kubernetes/), respectively.

Congratulations on completing the mission scope!


