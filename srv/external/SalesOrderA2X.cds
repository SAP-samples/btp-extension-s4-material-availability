/* checksum : 7b7f8fe4a5e7155bb3b4bbad873c2782 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service SalesOrderA2X {};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Sales Order Header'
entity SalesOrderA2X.A_SalesOrder {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order Type'
  SalesOrderType : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  SalesOrganization : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  DistributionChannel : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  OrganizationDivision : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Group'
  SalesGroup : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  SalesOffice : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales District'
  SalesDistrict : String(6) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sold-to Party'
  SoldToParty : String(10) null;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Name of Person Responsible for Creating the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12) null;
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Last Changed On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDate : Date null;
  @sap.label : 'Ext. Bus. Syst. ID'
  @sap.quickinfo : 'External Business System ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SenderBusinessSystemName : String(60) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'External Document ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ExternalDocumentID : String(40) null;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDateTime : Timestamp null;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'External Revision'
  @sap.quickinfo : 'Timestamp for Revision of External Calls'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ExternalDocLastChangeDateTime : Timestamp null;
  @sap.label : 'Customer Reference'
  PurchaseOrderByCustomer : String(35) null;
  @sap.label : 'Customer Reference'
  @sap.quickinfo : 'Ship-to Party''s Customer Reference'
  PurchaseOrderByShipToParty : String(35) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Order Type'
  @sap.quickinfo : 'Customer Purchase Order Type'
  CustomerPurchaseOrderType : String(4) null;
  @sap.display.format : 'Date'
  @sap.label : 'Customer Ref. Date'
  @sap.quickinfo : 'Customer Reference Date'
  CustomerPurchaseOrderDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Document Date'
  @sap.quickinfo : 'Document Date (Date Received/Sent)'
  SalesOrderDate : Date null;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Net Value'
  @sap.quickinfo : 'Net Value of the Sales Order in Document Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TotalNetAmount : Decimal(16, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Status'
  @sap.quickinfo : 'Delivery Status (All Items)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OverallDeliveryStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overall Block Status'
  @sap.quickinfo : 'Overall Block Status (Header)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TotalBlockStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ord.-Rel. Billg Sts'
  @sap.quickinfo : 'Order-Related Billing Status (All Items)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OverallOrdReltdBillgStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Status'
  @sap.quickinfo : 'Reference Status (All Items)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OverallSDDocReferenceStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Currency'
  @sap.quickinfo : 'SD Document Currency'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Reason'
  @sap.quickinfo : 'Order Reason (Reason for the Business Transaction)'
  SDDocumentReason : String(3) null;
  @sap.display.format : 'Date'
  @sap.label : 'Pricing Date'
  @sap.quickinfo : 'Date for Pricing and Exchange Rate'
  PricingDate : Date null;
  @sap.label : 'Exchange Rate'
  @sap.quickinfo : 'Exchange Rate for Price Determination'
  PriceDetnExchangeRate : Decimal(9, 5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill. Plan No.'
  @sap.quickinfo : 'Billing Plan Number / Invoicing Plan Number'
  BillingPlan : String(10) null;
  @sap.display.format : 'Date'
  @sap.label : 'Requested Delivery Date'
  RequestedDeliveryDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Conditions'
  ShippingCondition : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Complete Delivery'
  @sap.quickinfo : 'Complete Delivery Defined for Each Sales Order?'
  CompleteDeliveryIsDefined : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Type'
  ShippingType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Block'
  @sap.quickinfo : 'Billing Block in SD Document'
  HeaderBillingBlockReason : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Block'
  @sap.quickinfo : 'Delivery Block (Document Header)'
  DeliveryBlockReason : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deliv Date Rule'
  @sap.quickinfo : 'Delivery Date Rule'
  DeliveryDateTypeRule : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3) null;
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28) null;
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70) null;
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Price Group'
  CustomerPriceGroup : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price List Type'
  PriceListType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Terms of Payment Key'
  CustomerPaymentTerms : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Method'
  PaymentMethod : String(1) null;
  @sap.display.format : 'Date'
  @sap.label : 'Fixed Value Date'
  FixedValueDate : Date null;
  @sap.label : 'Assignment'
  @sap.quickinfo : 'Assignment Number'
  AssignmentReference : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Document'
  @sap.quickinfo : 'Document Number of Reference Document'
  ReferenceSDDocument : String(10) null;
  @sap.label : 'Preceding Doc.Categ.'
  @sap.quickinfo : 'Document Category of Preceding SD Document'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ReferenceSDDocumentCategory : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference'
  @sap.quickinfo : 'Reference Document Number'
  AccountingDocExternalReference : String(16) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct Assmt Grp Cust.'
  @sap.quickinfo : 'Account Assignment Group for Customer'
  CustomerAccountAssignmentGroup : String(2) null;
  @sap.label : 'Exchng. Rate Accntg.'
  @sap.quickinfo : 'Exchange Rate for Postings to Financial Accounting'
  AccountingExchangeRate : Decimal(9, 5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group'
  CustomerGroup : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group 1'
  AdditionalCustomerGroup1 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group 2'
  AdditionalCustomerGroup2 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group 3'
  AdditionalCustomerGroup3 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group 4'
  AdditionalCustomerGroup4 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group 5'
  AdditionalCustomerGroup5 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relevant for POD'
  @sap.quickinfo : 'Relevant for POD processing'
  SlsDocIsRlvtForProofOfDeliv : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alt.Tax Classific.'
  @sap.quickinfo : 'Alternative Tax Classification'
  CustomerTaxClassification1 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Class.2 Customer'
  @sap.quickinfo : 'Tax Classification 2 for Customer'
  CustomerTaxClassification2 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Class.3 Customer'
  @sap.quickinfo : 'Tax Classification 3 for Customer'
  CustomerTaxClassification3 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Class.4 Customer'
  @sap.quickinfo : 'Tax Classification 4 for Customer'
  CustomerTaxClassification4 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Class.5 Customer'
  @sap.quickinfo : 'Tax Classification 5 for Customer'
  CustomerTaxClassification5 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Class.6 Customer'
  @sap.quickinfo : 'Tax Classification 6 for Customer'
  CustomerTaxClassification6 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Class.7 Customer'
  @sap.quickinfo : 'Tax Classification 7 for Customer'
  CustomerTaxClassification7 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Class.8 Customer'
  @sap.quickinfo : 'Tax Classification 8 for Customer'
  CustomerTaxClassification8 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Class.9 Customer'
  @sap.quickinfo : 'Tax Classification 9 for Customer'
  CustomerTaxClassification9 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Departure C/R'
  @sap.quickinfo : 'Tax Departure Country/Region'
  TaxDepartureCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Dest. Ctry/Reg.'
  @sap.quickinfo : 'Tax Destination Country/Region'
  VATRegistrationCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Apprvl Req. Rsn ID'
  @sap.quickinfo : 'Approval Request Reason ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrderApprovalReason : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Approval Status'
  @sap.quickinfo : 'Document Approval Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesDocApprovalStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overall Status'
  @sap.quickinfo : 'Overall Processing Status (Header/All Items)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OverallSDProcessStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Credit Status'
  @sap.quickinfo : 'Overall Status of Credit Checks'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TotalCreditCheckStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ovrl Delivery Status'
  @sap.quickinfo : 'Overall Delivery Status (All Items)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OverallTotalDeliveryStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rejection Status'
  @sap.quickinfo : 'Rejection Status (All Items)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OverallSDDocumentRejectionSts : String(1) null;
  @sap.display.format : 'Date'
  @sap.label : 'Billing Date'
  BillingDocumentDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contract Account'
  @sap.quickinfo : 'Contract Account Number'
  ContractAccount : String(12) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Addit. Value Days'
  @sap.quickinfo : 'Additional Value Days'
  AdditionalValueDays : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplement'
  @sap.quickinfo : 'Purchase order number supplement'
  CustomerPurchaseOrderSuplmnt : String(4) null;
  @sap.display.format : 'Date'
  @sap.label : 'Serv. Rendered Date'
  @sap.quickinfo : 'Date on which services are rendered'
  ServicesRenderedDate : Date null;
  @cds.ambiguous : 'missing on condition?'
  to_BillingPlan : Association to SalesOrderA2X.A_SalesOrderBillingPlan {  };
  @cds.ambiguous : 'missing on condition?'
  to_Item : Association to many SalesOrderA2X.A_SalesOrderItem {  };
  @cds.ambiguous : 'missing on condition?'
  to_Partner : Association to many SalesOrderA2X.A_SalesOrderHeaderPartner {  };
  @cds.ambiguous : 'missing on condition?'
  to_PaymentPlanItemDetails : Association to many SalesOrderA2X.A_SlsOrdPaymentPlanItemDetails {  };
  @cds.ambiguous : 'missing on condition?'
  to_PrecedingProcFlowDoc : Association to many SalesOrderA2X.A_SalesOrderPrecdgProcFlow {  };
  @cds.ambiguous : 'missing on condition?'
  to_PricingElement : Association to many SalesOrderA2X.A_SalesOrderHeaderPrElement {  };
  @cds.ambiguous : 'missing on condition?'
  to_RelatedObject : Association to many SalesOrderA2X.A_SalesOrderRelatedObject {  };
  @cds.ambiguous : 'missing on condition?'
  to_SubsequentProcFlowDoc : Association to many SalesOrderA2X.A_SalesOrderSubsqntProcFlow {  };
  @cds.ambiguous : 'missing on condition?'
  to_Text : Association to many SalesOrderA2X.A_SalesOrderText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Header Billing Plan'
entity SalesOrderA2X.A_SalesOrderBillingPlan {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill. Plan No.'
  @sap.quickinfo : 'Billing Plan Number / Invoicing Plan Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key BillingPlan : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Start Date'
  @sap.quickinfo : 'Start Date for Billing Plan/Invoice Plan'
  BillingPlanStartDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Origin of Start Date'
  @sap.quickinfo : 'Rule for Origin of Start Date of Billing/Invoicing Plan'
  BillingPlanStartDateRule : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference'
  @sap.quickinfo : 'Reference Billing Plan Number / Invoicing Plan Number'
  ReferenceBillingPlan : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Category'
  @sap.quickinfo : 'Billing plan category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanCategory : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Plan Type'
  @sap.quickinfo : 'Billing/Invoicing Plan Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanType : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'End Date'
  @sap.quickinfo : 'End Date Billing Plan/Invoice Plan'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanEndDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Origin End Date'
  @sap.quickinfo : 'Rule for Origin of End Date for Billing/Invoicing Plan'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanEndDateRule : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term'
  @sap.quickinfo : 'Sort Field'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanSearchTerm : String(10) null;
  @cds.ambiguous : 'missing on condition?'
  to_BillingPlanItem : Association to many SalesOrderA2X.A_SalesOrderBillingPlanItem {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Header Billing Plan Item'
entity SalesOrderA2X.A_SalesOrderBillingPlanItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill. Plan No.'
  @sap.quickinfo : 'Billing Plan Number / Invoicing Plan Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key BillingPlan : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item for billing plan/invoice plan/payment cards'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key BillingPlanItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Date Category'
  BillingPlanDateCategory : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Billing Date'
  BillingPlanBillingDate : Date null;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Billing Value'
  @sap.quickinfo : 'Value to be billed/calc. on date in billing/invoice plan'
  BillingPlanAmount : Decimal(16, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5) null;
  @sap.label : 'Invoice Percentage'
  @sap.quickinfo : 'Percentage of value to be invoiced'
  BillingPlanAmountPercent : Decimal(5, 2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Terms of Payment Key'
  CustomerPaymentTerms : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Type'
  @sap.quickinfo : 'Proposed Billing Type for an Order-Related Billing Document'
  ProposedBillingDocumentType : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Date Description'
  BillingPlanDateDescriptionCode : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Block'
  @sap.quickinfo : 'Billing Block for Billing Plan/Invoice Plan Dates'
  BillingBlockReason : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Settlement Start Date'
  @sap.quickinfo : 'Settlement Start Date of Billing Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanServiceStartDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Settlement End Date'
  @sap.quickinfo : 'Settlement End Date of Billing Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanServiceEndDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Status'
  @sap.quickinfo : 'Billing Status for Billing Plan/Invoice Plan Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanRelatedBillgStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Plan Type'
  @sap.quickinfo : 'Billing/Invoicing Plan Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixed Date'
  @sap.quickinfo : 'ID for Adopting Billing/Invoice Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AdoptingBillingDateID : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Rule'
  @sap.quickinfo : 'Rule in billing plan/invoice plan'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanBillingRule : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Usage'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanMilestoneUsage : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Correction Date'
  @sap.quickinfo : 'Indicator for Correction Date in Billing Plan'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillgPlnDteCorrectionRfndType : String(1) null;
  @sap.label : 'Accounting Exchange Rate'
  @sap.quickinfo : 'Exchange Rate for FI Postings'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AccountingExchangeRate : Decimal(9, 5) null;
  @sap.label : 'Reason'
  @sap.quickinfo : 'Reason for Postponement'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PostponementReason : String(255) null;
  @cds.ambiguous : 'missing on condition?'
  to_BillingPlan : Association to SalesOrderA2X.A_SalesOrderBillingPlan {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Header Partner'
entity SalesOrderA2X.A_SalesOrderHeaderPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  Customer : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  Supplier : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Personnel Number'
  Personnel : String(8) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contact Person'
  @sap.quickinfo : 'Number of Contact Person'
  ContactPerson : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  AddressID : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20) null;
  @cds.ambiguous : 'missing on condition?'
  to_Address : Association to many SalesOrderA2X.A_SalesOrderPartnerAddress {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Header Pricing Element'
entity SalesOrderA2X.A_SalesOrderHeaderPrElement {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Step Number'
  key PricingProcedureStep : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Condition Counter'
  key PricingProcedureCounter : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Type'
  ConditionType : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Timestamp for Pricing'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PricingDateTime : String(14) null;
  @sap.display.format : 'Date'
  @sap.label : 'Conditn Pricing Date'
  @sap.quickinfo : 'Condition Pricing Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PriceConditionDeterminationDte : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calculation Type'
  @sap.quickinfo : 'Calculation Type for Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionCalculationType : String(3) null;
  @sap.label : 'Condition Basis'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionBaseValue : Decimal(24, 9) null;
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionRateValue : Decimal(24, 9) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  ConditionCurrency : String(5) null;
  @sap.unit : 'ConditionQuantitySAPUnit'
  @sap.label : 'Pricing Unit'
  @sap.quickinfo : 'Condition Pricing Unit'
  ConditionQuantity : Decimal(5, 0) null;
  @sap.label : 'Condition Unit'
  @sap.quickinfo : 'Condition Unit in the Document'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantityUnit : String(3) null;
  @sap.label : 'SAP Condition Qty'
  @sap.quickinfo : 'SAP Unit Code for Condition Quantity'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantitySAPUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Condition Qty'
  @sap.quickinfo : 'ISO Unit Code for Condition Quantity'
  ConditionQuantityISOUnit : String(3) null;
  @sap.label : 'Condition Category'
  @sap.quickinfo : 'Condition Category (Examples: Tax, Freight, Price, Cost)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionCategory : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Statistical'
  @sap.quickinfo : 'Condition is used for statistics'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionIsForStatistics : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PricingScaleType : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Origin'
  @sap.quickinfo : 'Origin of the Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionOrigin : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsGroupCondition : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Record No.'
  @sap.quickinfo : 'Number of Condition Record'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionRecord : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequent.No. of Cond.'
  @sap.quickinfo : 'Sequential Number of the Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionSequentialNumber : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Code'
  @sap.quickinfo : 'Tax on Sales/Purchases Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxCode : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/tax code'
  @sap.quickinfo : 'Withholding tax code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WithholdingTaxCode : String(2) null;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Cond.Rounding Diff.'
  @sap.quickinfo : 'Rounding-Off Difference of the Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CndnRoundingOffDiffAmount : Decimal(6, 3) null;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Value'
  @sap.quickinfo : 'Condition Value'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionAmount : Decimal(16, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Currency'
  @sap.quickinfo : 'SD Document Currency'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionControl : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inactive Condition'
  @sap.quickinfo : 'Condition is Inactive'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionInactiveReason : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Class'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionClass : String(1) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Condition Counter (Header)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PrcgProcedureCounterForHeader : String(3) null;
  @sap.label : 'Condition Factor'
  @sap.quickinfo : 'Factor for Condition Base Value'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FactorForConditionBasisValue : Double null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Structure Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StructureCondition : String(1) null;
  @sap.label : 'Condition Factor'
  @sap.quickinfo : 'Factor for Condition Basis (Period)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PeriodFactorForCndnBasisValue : Double null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Basis'
  @sap.quickinfo : 'Scale Basis Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PricingScaleBasis : String(3) null;
  @sap.label : 'Scale Base Val.'
  @sap.quickinfo : 'Scale Base Value'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionScaleBasisValue : Decimal(24, 9) null;
  @sap.label : 'Scale Unit of Meas.'
  @sap.quickinfo : 'Condition Scale Unit of Measure'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  ConditionScaleBasisUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  ConditionScaleBasisCurrency : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intercomp.Billing'
  @sap.quickinfo : 'Condition for Intercompany Billing'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CndnIsRelevantForIntcoBilling : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed Manually'
  @sap.quickinfo : 'Condition Changed Manually'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionIsManuallyChanged : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'UsedforVariantConfig'
  @sap.quickinfo : 'Condition Used for Variant Configuration'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionIsForConfiguration : Boolean null;
  @sap.label : 'Variant Key'
  @sap.quickinfo : 'Variant Condition Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  VariantCondition : String(26) null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Sales Order Item'
entity SalesOrderA2X.A_SalesOrderItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.text : 'SalesOrderItemText'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Higher-Level Item'
  @sap.quickinfo : 'Higher-Level Item in Bill of Material Structures'
  HigherLevelItem : String(6) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Usage of HL Item'
  @sap.quickinfo : 'ID for higher-level item usage'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HigherLevelItemUsage : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Item Category'
  @sap.quickinfo : 'Sales Document Item Category'
  SalesOrderItemCategory : String(4) null;
  @sap.label : 'Item Description'
  @sap.quickinfo : 'Short Text for Sales Order Item'
  SalesOrderItemText : String(40) null;
  @sap.label : 'Customer Reference'
  PurchaseOrderByCustomer : String(35) null;
  @sap.label : 'Customer Reference'
  @sap.quickinfo : 'Ship-to Party''s Customer Reference'
  PurchaseOrderByShipToParty : String(35) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Order Item'
  @sap.quickinfo : 'Item Number of the Underlying Purchase Order'
  UnderlyingPurchaseOrderItem : String(6) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'External Item ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ExternalItemID : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Material'
  @sap.quickinfo : 'Material Number Used by Customer'
  MaterialByCustomer : String(35) null;
  @sap.display.format : 'Date'
  @sap.label : 'Pricing Date'
  @sap.quickinfo : 'Date for Pricing and Exchange Rate'
  PricingDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pricing Ref. Matl'
  @sap.quickinfo : 'Pricing Reference Material'
  PricingReferenceMaterial : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill. Plan No.'
  @sap.quickinfo : 'Billing Plan Number / Invoicing Plan Number'
  BillingPlan : String(10) null;
  @sap.unit : 'RequestedQuantitySAPUnit'
  @sap.label : 'Requested Quantity'
  RequestedQuantity : Decimal(15, 3) null;
  @sap.label : 'Requested Qty Unit'
  @sap.quickinfo : 'Unit of the Requested Quantity'
  @sap.semantics : 'unit-of-measure'
  RequestedQuantityUnit : String(3) null;
  @sap.label : 'SAP Code Req. Qty'
  @sap.quickinfo : 'SAP Unit Code for Requested Quantity'
  @sap.semantics : 'unit-of-measure'
  RequestedQuantitySAPUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Code Req. Qty'
  @sap.quickinfo : 'ISO Unit Code for Requested Quantity'
  RequestedQuantityISOUnit : String(3) null;
  @sap.label : 'Sales Unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  OrderQuantityUnit : String(3) null;
  @sap.label : 'SAP Order Quantity'
  @sap.quickinfo : 'SAP Unit Code for Order Quantity'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  OrderQuantitySAPUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Order Quantity'
  @sap.quickinfo : 'ISO Unit Code for Order Quantity'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrderQuantityISOUnit : String(3) null;
  @sap.unit : 'OrderQuantitySAPUnit'
  @sap.label : 'Cumltv Confd Qty(SU)'
  @sap.quickinfo : 'Cumulative Confirmed Quantity in Sales Unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConfdDelivQtyInOrderQtyUnit : Decimal(15, 3) null;
  @sap.unit : 'ItemWeightSAPUnit'
  @sap.label : 'Gross Weight'
  @sap.quickinfo : 'Gross Weight of the Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ItemGrossWeight : Decimal(15, 3) null;
  @sap.unit : 'ItemWeightSAPUnit'
  @sap.label : 'Net Weight'
  @sap.quickinfo : 'Net Weight of the Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ItemNetWeight : Decimal(15, 3) null;
  @sap.label : 'Unit of Weight'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  ItemWeightUnit : String(3) null;
  @sap.label : 'SAP Code Item Weight'
  @sap.quickinfo : 'SAP Unit Code for Item Weight'
  @sap.semantics : 'unit-of-measure'
  ItemWeightSAPUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Code Item Weight'
  @sap.quickinfo : 'ISO Unit Code for Item Weight'
  ItemWeightISOUnit : String(3) null;
  @sap.unit : 'ItemVolumeSAPUnit'
  @sap.label : 'Volume'
  @sap.quickinfo : 'Volume of the item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ItemVolume : Decimal(15, 3) null;
  @sap.label : 'Volume Unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  ItemVolumeUnit : String(3) null;
  @sap.label : 'SAP Code f Item Vol.'
  @sap.quickinfo : 'SAP Unit Code for Item Volume'
  @sap.semantics : 'unit-of-measure'
  ItemVolumeSAPUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Unit Item Volume'
  @sap.quickinfo : 'ISO Unit Code for Item Volume'
  ItemVolumeISOUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Currency'
  @sap.quickinfo : 'SD Document Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5) null;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Net Value'
  @sap.quickinfo : 'Net Value of the Order Item in Document Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NetAmount : Decimal(16, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ovrl Reference Sts'
  @sap.quickinfo : 'Overall Reference Status (Item)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TotalSDDocReferenceStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Status'
  @sap.quickinfo : 'Reference Status (Item)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SDDocReferenceStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Substitution Reason'
  @sap.quickinfo : 'Reason for material substitution'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaterialSubstitutionReason : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  MaterialGroup : String(9) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Price Grp'
  @sap.quickinfo : 'Material Price Group'
  MaterialPricingGroup : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group 1'
  AdditionalMaterialGroup1 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group 2'
  AdditionalMaterialGroup2 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group 3'
  AdditionalMaterialGroup3 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group 4'
  AdditionalMaterialGroup4 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group 5'
  AdditionalMaterialGroup5 : String(3) null;
  @sap.display.format : 'Date'
  @sap.label : 'Billing Date'
  BillingDocumentDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contract Account'
  @sap.quickinfo : 'Contract Account Number'
  ContractAccount : String(12) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Addit. Value Days'
  @sap.quickinfo : 'Additional Value Days'
  AdditionalValueDays : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Serv. Rendered Date'
  @sap.quickinfo : 'Date on which services are rendered'
  ServicesRenderedDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch'
  @sap.quickinfo : 'Batch Number'
  Batch : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.quickinfo : 'Plant (Own or External)'
  ProductionPlant : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Original Plant'
  @sap.quickinfo : 'Original Plant in Plant Substitution'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OriginalPlant : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Substitution Status'
  @sap.quickinfo : 'Substitution Status for Alternative-Based Confirmation (ABC)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AltvBsdConfSubstitutionStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Location'
  StorageLocation : String(4) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Delivery Group'
  @sap.quickinfo : 'Delivery Group (Items are delivered together)'
  DeliveryGroup : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Point'
  @sap.quickinfo : 'Shipping Point / Receiving Point'
  ShippingPoint : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Type'
  ShippingType : String(2) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Delivery Priority'
  DeliveryPriority : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deliv Date Rule'
  @sap.quickinfo : 'Delivery Date Rule'
  DeliveryDateTypeRule : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3) null;
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28) null;
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70) null;
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70) null;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Tax Amount'
  @sap.quickinfo : 'Tax Amount in Document Currency'
  TaxAmount : Decimal(14, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classifc. Mat.'
  @sap.quickinfo : 'Tax Classification for Material'
  ProductTaxClassification1 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classifc. Mat.'
  @sap.quickinfo : 'Tax Classification for Material'
  ProductTaxClassification2 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classifc. Mat.'
  @sap.quickinfo : 'Tax Classification for Material'
  ProductTaxClassification3 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classifc. Mat.'
  @sap.quickinfo : 'Tax Classification for Material'
  ProductTaxClassification4 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classifc. Mat.'
  @sap.quickinfo : 'Tax Classification for Material'
  ProductTaxClassification5 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classifc. Mat.'
  @sap.quickinfo : 'Tax Classification for Material'
  ProductTaxClassification6 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classifc. Mat.'
  @sap.quickinfo : 'Tax Classification for Material'
  ProductTaxClassification7 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classifc. Mat.'
  @sap.quickinfo : 'Tax Classification for Material'
  ProductTaxClassification8 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classifc. Mat.'
  @sap.quickinfo : 'Tax Classification for Material'
  ProductTaxClassification9 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct Assmt Grp Mat.'
  @sap.quickinfo : 'Account Assignment Group for Material'
  MatlAccountAssignmentGroup : String(2) null;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Cost'
  @sap.quickinfo : 'Cost in Document Currency'
  CostAmount : Decimal(14, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Terms of Payment Key'
  CustomerPaymentTerms : String(4) null;
  @sap.display.format : 'Date'
  @sap.label : 'Fixed Value Date'
  FixedValueDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group'
  CustomerGroup : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reason for Rejection'
  @sap.quickinfo : 'Reason for Rejection of Sales Documents'
  SalesDocumentRjcnReason : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Block'
  @sap.quickinfo : 'Billing Block for Item'
  ItemBillingBlockReason : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relevant for POD'
  @sap.quickinfo : 'Relevant for POD processing'
  SlsDocIsRlvtForProofOfDeliv : Boolean null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElement : String(24) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10) null;
  @sap.label : 'Exchng. Rate Accntg.'
  @sap.quickinfo : 'Exchange Rate for Postings to Financial Accounting'
  AccountingExchangeRate : Decimal(9, 5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Document'
  @sap.quickinfo : 'Document Number of Reference Document'
  ReferenceSDDocument : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reference Item'
  @sap.quickinfo : 'Item Number of the Reference Item'
  ReferenceSDDocumentItem : String(6) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overall Status'
  @sap.quickinfo : 'Overall Processing Status (Item)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SDProcessStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Status'
  @sap.quickinfo : 'Delivery Status (Item)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DeliveryStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ord.-Rel. Billg Sts'
  @sap.quickinfo : 'Order-Related Billing Status (Item)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrderRelatedBillingStatus : String(1) null;
  @cds.ambiguous : 'missing on condition?'
  to_BillingPlan : Association to SalesOrderA2X.A_SalesOrderItemBillingPlan {  };
  @cds.ambiguous : 'missing on condition?'
  to_Partner : Association to many SalesOrderA2X.A_SalesOrderItemPartner {  };
  @cds.ambiguous : 'missing on condition?'
  to_PrecedingProcFlowDocItem : Association to many SalesOrderA2X.A_SalesOrderItmPrecdgProcFlow {  };
  @cds.ambiguous : 'missing on condition?'
  to_PricingElement : Association to many SalesOrderA2X.A_SalesOrderItemPrElement {  };
  @cds.ambiguous : 'missing on condition?'
  to_RelatedObject : Association to many SalesOrderA2X.A_SalesOrderItemRelatedObject {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
  @cds.ambiguous : 'missing on condition?'
  to_ScheduleLine : Association to many SalesOrderA2X.A_SalesOrderScheduleLine {  };
  @cds.ambiguous : 'missing on condition?'
  to_SubsequentProcFlowDocItem : Association to many SalesOrderA2X.A_SalesOrderItmSubsqntProcFlow {  };
  @cds.ambiguous : 'missing on condition?'
  to_Text : Association to many SalesOrderA2X.A_SalesOrderItemText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Item Billing Plan'
entity SalesOrderA2X.A_SalesOrderItemBillingPlan {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill. Plan No.'
  @sap.quickinfo : 'Billing Plan Number / Invoicing Plan Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key BillingPlan : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Header Billing Plan'
  @sap.quickinfo : 'Indicator for Billing Plan in Header'
  BillingPlanIsInHeader : Boolean null;
  @sap.display.format : 'Date'
  @sap.label : 'Start Date'
  @sap.quickinfo : 'Start Date for Billing Plan/Invoice Plan'
  BillingPlanStartDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Origin of Start Date'
  @sap.quickinfo : 'Rule for Origin of Start Date of Billing/Invoicing Plan'
  BillingPlanStartDateRule : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference'
  @sap.quickinfo : 'Reference Billing Plan Number / Invoicing Plan Number'
  ReferenceBillingPlan : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Category'
  @sap.quickinfo : 'Billing plan category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanCategory : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Plan Type'
  @sap.quickinfo : 'Billing/Invoicing Plan Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanType : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'End Date'
  @sap.quickinfo : 'End Date Billing Plan/Invoice Plan'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanEndDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Origin End Date'
  @sap.quickinfo : 'Rule for Origin of End Date for Billing/Invoicing Plan'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanEndDateRule : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term'
  @sap.quickinfo : 'Sort Field'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanSearchTerm : String(10) null;
  @cds.ambiguous : 'missing on condition?'
  to_BillingPlanItem : Association to many SalesOrderA2X.A_SlsOrderItemBillingPlanItem {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrderItem : Association to SalesOrderA2X.A_SalesOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Item Partner'
entity SalesOrderA2X.A_SalesOrderItemPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  Customer : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  Supplier : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Personnel Number'
  Personnel : String(8) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contact Person'
  @sap.quickinfo : 'Number of Contact Person'
  ContactPerson : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  AddressID : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20) null;
  @cds.ambiguous : 'missing on condition?'
  to_Address : Association to many SalesOrderA2X.A_SalesOrderItemPartnerAddress {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrderItem : Association to SalesOrderA2X.A_SalesOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Item Partner Address'
entity SalesOrderA2X.A_SalesOrderItemPartnerAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'SD Document'
  @sap.quickinfo : 'Sales and Distribution Document Number'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item (SD)'
  @sap.quickinfo : 'Item number of the SD document'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Version'
  @sap.quickinfo : 'Version ID for International Addresses'
  key AddressRepresentationCode : String(1) not null;
  @sap.label : 'Language Key'
  CorrespondenceLanguage : String(2) null;
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  AddresseeFullName : String(80) null;
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  OrganizationName1 : String(40) null;
  @sap.label : 'Name 2'
  OrganizationName2 : String(40) null;
  @sap.label : 'Name 3'
  OrganizationName3 : String(40) null;
  @sap.label : 'Name 4'
  OrganizationName4 : String(40) null;
  @sap.label : 'City'
  CityName : String(40) null;
  @sap.label : 'District'
  DistrictName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City Postal Code'
  PostalCode : String(10) null;
  @sap.label : 'Street'
  StreetName : String(60) null;
  @sap.label : 'Street Address Non-Deliverable Reason'
  @sap.quickinfo : 'Street 2'
  StreetPrefixName1 : String(40) null;
  @sap.label : 'Street 3'
  StreetPrefixName2 : String(40) null;
  @sap.label : 'Street 4'
  StreetSuffixName1 : String(40) null;
  @sap.label : 'Street 5'
  StreetSuffixName2 : String(40) null;
  @sap.label : 'House Number'
  HouseNumber : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title'
  @sap.quickinfo : 'Form-of-Address Key'
  FormOfAddress : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Zone'
  @sap.quickinfo : 'Transportation zone to or from which the goods are delivered'
  TransportZone : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Postal Code'
  POBoxPostalCode : String(10) null;
  @sap.label : 'Email Address'
  EmailAddress : String(241) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  MobilePhoneCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code + Number'
  MobileNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  PhoneNumberCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code + Number'
  PhoneNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Telephone no.: Extension'
  PhoneExtensionNumber : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  FaxNumberCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Fax Number: Dialing Code+Number'
  FaxAreaCodeSubscriberNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Fax no.: Extension'
  FaxExtensionNumber : String(10) null;
  @cds.ambiguous : 'missing on condition?'
  to_Partner : Association to SalesOrderA2X.A_SalesOrderItemPartner {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrderItem : Association to SalesOrderA2X.A_SalesOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Item Pricing Element'
entity SalesOrderA2X.A_SalesOrderItemPrElement {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Step Number'
  key PricingProcedureStep : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Condition Counter'
  key PricingProcedureCounter : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Type'
  ConditionType : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Timestamp for Pricing'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PricingDateTime : String(14) null;
  @sap.display.format : 'Date'
  @sap.label : 'Conditn Pricing Date'
  @sap.quickinfo : 'Condition Pricing Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PriceConditionDeterminationDte : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calculation Type'
  @sap.quickinfo : 'Calculation Type for Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionCalculationType : String(3) null;
  @sap.label : 'Condition Basis'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionBaseValue : Decimal(24, 9) null;
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionRateValue : Decimal(24, 9) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  ConditionCurrency : String(5) null;
  @sap.unit : 'ConditionQuantitySAPUnit'
  @sap.label : 'Pricing Unit'
  @sap.quickinfo : 'Condition Pricing Unit'
  ConditionQuantity : Decimal(5, 0) null;
  @sap.label : 'Condition Unit'
  @sap.quickinfo : 'Condition Unit in the Document'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantityUnit : String(3) null;
  @sap.label : 'SAP Condition Qty'
  @sap.quickinfo : 'SAP Unit Code for Condition Quantity'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantitySAPUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Condition Qty'
  @sap.quickinfo : 'ISO Unit Code for Condition Quantity'
  ConditionQuantityISOUnit : String(3) null;
  @sap.label : 'Condition Category'
  @sap.quickinfo : 'Condition Category (Examples: Tax, Freight, Price, Cost)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionCategory : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Statistical'
  @sap.quickinfo : 'Condition is used for statistics'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionIsForStatistics : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PricingScaleType : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Accruals'
  @sap.quickinfo : 'Condition is Relevant for Accrual (e.g. Freight)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsRelevantForAccrual : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice List Cond.'
  @sap.quickinfo : 'Condition for Invoice List'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CndnIsRelevantForInvoiceList : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Origin'
  @sap.quickinfo : 'Origin of the Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionOrigin : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsGroupCondition : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Record No.'
  @sap.quickinfo : 'Number of Condition Record'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionRecord : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequent.No. of Cond.'
  @sap.quickinfo : 'Sequential Number of the Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionSequentialNumber : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Code'
  @sap.quickinfo : 'Tax on Sales/Purchases Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxCode : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/tax code'
  @sap.quickinfo : 'Withholding tax code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WithholdingTaxCode : String(2) null;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Cond.Rounding Diff.'
  @sap.quickinfo : 'Rounding-Off Difference of the Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CndnRoundingOffDiffAmount : Decimal(6, 3) null;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Value'
  @sap.quickinfo : 'Condition Value'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionAmount : Decimal(16, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Currency'
  @sap.quickinfo : 'SD Document Currency'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionControl : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inactive Condition'
  @sap.quickinfo : 'Condition is Inactive'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionInactiveReason : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Class'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionClass : String(1) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Condition Counter (Header)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PrcgProcedureCounterForHeader : String(3) null;
  @sap.label : 'Condition Factor'
  @sap.quickinfo : 'Factor for Condition Base Value'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FactorForConditionBasisValue : Double null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Structure Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StructureCondition : String(1) null;
  @sap.label : 'Condition Factor'
  @sap.quickinfo : 'Factor for Condition Basis (Period)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PeriodFactorForCndnBasisValue : Double null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Basis'
  @sap.quickinfo : 'Scale Basis Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PricingScaleBasis : String(3) null;
  @sap.label : 'Scale Base Val.'
  @sap.quickinfo : 'Scale Base Value'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionScaleBasisValue : Decimal(24, 9) null;
  @sap.label : 'Scale Unit of Meas.'
  @sap.quickinfo : 'Condition Scale Unit of Measure'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  ConditionScaleBasisUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  ConditionScaleBasisCurrency : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intercomp.Billing'
  @sap.quickinfo : 'Condition for Intercompany Billing'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CndnIsRelevantForIntcoBilling : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed Manually'
  @sap.quickinfo : 'Condition Changed Manually'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionIsManuallyChanged : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'UsedforVariantConfig'
  @sap.quickinfo : 'Condition Used for Variant Configuration'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionIsForConfiguration : Boolean null;
  @sap.label : 'Variant Key'
  @sap.quickinfo : 'Variant Condition Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  VariantCondition : String(26) null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrderItem : Association to SalesOrderA2X.A_SalesOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '1'
@sap.label : 'Item Related Object'
entity SalesOrderA2X.A_SalesOrderItemRelatedObject {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  @sap.quickinfo : 'Sequence Number of the Related Object of an SD Document'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SDDocRelatedObjectSequenceNmbr : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Related Object Type'
  @sap.quickinfo : 'Type of the Related Object of an SD Document'
  SDDocumentRelatedObjectType : String(5) null;
  @sap.label : 'System of Reltd Obj.'
  @sap.quickinfo : 'System of the Related Object of an SD Document'
  SDDocRelatedObjectSystem : String(60) null;
  @sap.label : 'Reltd Obj. Reference'
  @sap.quickinfo : 'Reference of the Related Object of an SD Document'
  SDDocRelatedObjectReference1 : String(60) null;
  @sap.label : 'Reltd Obj. Reference'
  @sap.quickinfo : 'Reference of the Related Object of an SD Document'
  SDDocRelatedObjectReference2 : String(60) null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrderItem : Association to SalesOrderA2X.A_SalesOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Item Text'
entity SalesOrderA2X.A_SalesOrderItemText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrderItem : Association to SalesOrderA2X.A_SalesOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Item Preceding Process Flow'
entity SalesOrderA2X.A_SalesOrderItmPrecdgProcFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsequent Document'
  @sap.quickinfo : 'Subsequent Sales and Distribution Document'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Subsequent Item'
  @sap.quickinfo : 'Subsequent Item of an SD Document'
  key SalesOrderItem : String(6) not null;
  @sap.label : 'DocRelationshipUUID'
  @sap.quickinfo : 'SD Unique Document Relationship Identification'
  key DocRelationshipUUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preceding Document'
  @sap.quickinfo : 'Preceding sales and distribution document'
  PrecedingDocument : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Preceding Item'
  @sap.quickinfo : 'Preceding Item of an SD Document'
  PrecedingDocumentItem : String(6) null;
  @sap.label : 'Preceding Doc.Categ.'
  @sap.quickinfo : 'Document Category of Preceding SD Document'
  PrecedingDocumentCategory : String(4) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Level'
  @sap.quickinfo : 'Level of the document flow record'
  ProcessFlowLevel : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Field Name'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  RelatedProcFlowDocStsFieldName : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overall Status'
  @sap.quickinfo : 'Overall Processing Status (Item)'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  SDProcessStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting Status'
  @sap.quickinfo : 'Status for Transfer to Accounting'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  AccountingTransferStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Preliminary Billing Document Status'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PrelimBillingDocumentStatus : String(1) null;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  CreationDate : Date null;
  @sap.label : 'Time'
  @sap.quickinfo : 'Entry time'
  CreationTime : Time null;
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Last Changed On'
  LastChangeDate : Date null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrderItem : Association to SalesOrderA2X.A_SalesOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Item Subsequent Process Flow'
entity SalesOrderA2X.A_SalesOrderItmSubsqntProcFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preceding Document'
  @sap.quickinfo : 'Preceding sales and distribution document'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Preceding Item'
  @sap.quickinfo : 'Preceding Item of an SD Document'
  key SalesOrderItem : String(6) not null;
  @sap.label : 'DocRelationshipUUID'
  @sap.quickinfo : 'SD Unique Document Relationship Identification'
  key DocRelationshipUUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsequent Document'
  @sap.quickinfo : 'Subsequent Sales and Distribution Document'
  SubsequentDocument : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Subsequent Item'
  @sap.quickinfo : 'Subsequent Item of an SD Document'
  SubsequentDocumentItem : String(6) null;
  @sap.label : 'Subsequent Doc. Cat.'
  @sap.quickinfo : 'Document Category of Subsequent Document'
  SubsequentDocumentCategory : String(4) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Level'
  @sap.quickinfo : 'Level of the document flow record'
  ProcessFlowLevel : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Field Name'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  RelatedProcFlowDocStsFieldName : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overall Status'
  @sap.quickinfo : 'Overall Processing Status (Item)'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  SDProcessStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting Status'
  @sap.quickinfo : 'Status for Transfer to Accounting'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  AccountingTransferStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Preliminary Billing Document Status'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PrelimBillingDocumentStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preceding Document'
  @sap.quickinfo : 'Preceding sales and distribution document'
  SubsqntDocItmPrecdgDocument : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Preceding Item'
  @sap.quickinfo : 'Preceding Item of an SD Document'
  SubsqntDocItmPrecdgDocItem : String(6) null;
  @sap.label : 'Preceding Doc.Categ.'
  @sap.quickinfo : 'Document Category of Preceding SD Document'
  SubsqntDocItmPrecdgDocCategory : String(4) null;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  CreationDate : Date null;
  @sap.label : 'Time'
  @sap.quickinfo : 'Entry time'
  CreationTime : Time null;
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Last Changed On'
  LastChangeDate : Date null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrderItem : Association to SalesOrderA2X.A_SalesOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Header Partner Address'
entity SalesOrderA2X.A_SalesOrderPartnerAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'SD Document'
  @sap.quickinfo : 'Sales and Distribution Document Number'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Version'
  @sap.quickinfo : 'Version ID for International Addresses'
  key AddressRepresentationCode : String(1) not null;
  @sap.label : 'Language Key'
  CorrespondenceLanguage : String(2) null;
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  AddresseeFullName : String(80) null;
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  OrganizationName1 : String(40) null;
  @sap.label : 'Name 2'
  OrganizationName2 : String(40) null;
  @sap.label : 'Name 3'
  OrganizationName3 : String(40) null;
  @sap.label : 'Name 4'
  OrganizationName4 : String(40) null;
  @sap.label : 'City'
  CityName : String(40) null;
  @sap.label : 'District'
  DistrictName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City Postal Code'
  PostalCode : String(10) null;
  @sap.label : 'Street Address Non-Deliverable Reason'
  @sap.quickinfo : 'Street 2'
  StreetPrefixName1 : String(40) null;
  @sap.label : 'Street 3'
  StreetPrefixName2 : String(40) null;
  @sap.label : 'Street'
  StreetName : String(60) null;
  @sap.label : 'Street 4'
  StreetSuffixName1 : String(40) null;
  @sap.label : 'Street 5'
  StreetSuffixName2 : String(40) null;
  @sap.label : 'House Number'
  HouseNumber : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title'
  @sap.quickinfo : 'Form-of-Address Key'
  FormOfAddress : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Zone'
  @sap.quickinfo : 'Transportation zone to or from which the goods are delivered'
  TransportZone : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Postal Code'
  POBoxPostalCode : String(10) null;
  @sap.label : 'Email Address'
  EmailAddress : String(241) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  MobilePhoneCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code + Number'
  MobileNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  PhoneNumberCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code + Number'
  PhoneNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Telephone no.: Extension'
  PhoneExtensionNumber : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  FaxNumberCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Fax Number: Dialing Code+Number'
  FaxAreaCodeSubscriberNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Fax no.: Extension'
  FaxExtensionNumber : String(10) null;
  @cds.ambiguous : 'missing on condition?'
  to_Partner : Association to SalesOrderA2X.A_SalesOrderHeaderPartner {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Header Preceding Process Flow'
entity SalesOrderA2X.A_SalesOrderPrecdgProcFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsequent Document'
  @sap.quickinfo : 'Subsequent Sales and Distribution Document'
  key SalesOrder : String(10) not null;
  @sap.label : 'DocRelationshipUUID'
  @sap.quickinfo : 'SD Unique Document Relationship Identification'
  key DocRelationshipUUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preceding Document'
  @sap.quickinfo : 'Preceding sales and distribution document'
  PrecedingDocument : String(10) null;
  @sap.label : 'Preceding Doc.Categ.'
  @sap.quickinfo : 'Document Category of Preceding SD Document'
  PrecedingDocumentCategory : String(4) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Level'
  @sap.quickinfo : 'Level of the document flow record'
  ProcessFlowLevel : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overall Status'
  @sap.quickinfo : 'Overall Processing Status (Header/All Items)'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OverallSDProcessStatus : String(1) null;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  CreationDate : Date null;
  @sap.label : 'Time'
  @sap.quickinfo : 'Entry time'
  CreationTime : Time null;
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Last Changed On'
  LastChangeDate : Date null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '1'
@sap.label : 'Header Related Object'
entity SalesOrderA2X.A_SalesOrderRelatedObject {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  @sap.quickinfo : 'Sequence Number of the Related Object of an SD Document'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SDDocRelatedObjectSequenceNmbr : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Related Object Type'
  @sap.quickinfo : 'Type of the Related Object of an SD Document'
  SDDocumentRelatedObjectType : String(5) null;
  @sap.label : 'System of Reltd Obj.'
  @sap.quickinfo : 'System of the Related Object of an SD Document'
  SDDocRelatedObjectSystem : String(60) null;
  @sap.label : 'Reltd Obj. Reference'
  @sap.quickinfo : 'Reference of the Related Object of an SD Document'
  SDDocRelatedObjectReference1 : String(60) null;
  @sap.label : 'Reltd Obj. Reference'
  @sap.quickinfo : 'Reference of the Related Object of an SD Document'
  SDDocRelatedObjectReference2 : String(60) null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Item Schedule Line'
entity SalesOrderA2X.A_SalesOrderScheduleLine {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Document'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Document Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Schedule Line Number'
  key ScheduleLine : String(4) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Delivery Date'
  @sap.quickinfo : 'Requested Delivery Date'
  RequestedDeliveryDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Delivery Date'
  @sap.quickinfo : 'Confirmed Delivery Date'
  ConfirmedDeliveryDate : Date null;
  @sap.label : 'Sales Unit'
  @sap.semantics : 'unit-of-measure'
  OrderQuantityUnit : String(3) null;
  @sap.label : 'SAP Order Quantity'
  @sap.quickinfo : 'SAP Unit Code for Order Quantity'
  @sap.semantics : 'unit-of-measure'
  OrderQuantitySAPUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Order Quantity'
  @sap.quickinfo : 'ISO Unit Code for Order Quantity'
  OrderQuantityISOUnit : String(3) null;
  @sap.unit : 'OrderQuantitySAPUnit'
  @sap.label : 'Order Quantity'
  @sap.quickinfo : 'Order Quantity in Sales Units'
  ScheduleLineOrderQuantity : Decimal(13, 3) null;
  @sap.unit : 'OrderQuantitySAPUnit'
  @sap.label : 'Confirmed Quantity'
  ConfdOrderQtyByMatlAvailCheck : Decimal(13, 3) null;
  @sap.unit : 'OrderQuantitySAPUnit'
  @sap.label : 'Delivered Quantity'
  DeliveredQtyInOrderQtyUnit : Decimal(13, 3) null;
  @sap.unit : 'OrderQuantitySAPUnit'
  @sap.label : 'Open Quantity'
  @sap.quickinfo : 'Open Confirmed Delivery Quantity'
  OpenConfdDelivQtyInOrdQtyUnit : Decimal(13, 3) null;
  @sap.unit : 'OrderQuantitySAPUnit'
  @sap.label : 'Corr.qty'
  @sap.quickinfo : 'Corrected quantity in sales unit'
  CorrectedQtyInOrderQtyUnit : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Block'
  @sap.quickinfo : 'Schedule Line Blocked for Delivery'
  DelivBlockReasonForSchedLine : String(2) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Header Subsequent Process Flow'
entity SalesOrderA2X.A_SalesOrderSubsqntProcFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preceding Document'
  @sap.quickinfo : 'Preceding sales and distribution document'
  key SalesOrder : String(10) not null;
  @sap.label : 'DocRelationshipUUID'
  @sap.quickinfo : 'SD Unique Document Relationship Identification'
  key DocRelationshipUUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsequent Document'
  @sap.quickinfo : 'Subsequent Sales and Distribution Document'
  SubsequentDocument : String(10) null;
  @sap.label : 'Subsequent Doc. Cat.'
  @sap.quickinfo : 'Document Category of Subsequent Document'
  SubsequentDocumentCategory : String(4) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Level'
  @sap.quickinfo : 'Level of the document flow record'
  ProcessFlowLevel : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overall Status'
  @sap.quickinfo : 'Overall Processing Status (Header/All Items)'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OverallSDProcessStatus : String(1) null;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  CreationDate : Date null;
  @sap.label : 'Time'
  @sap.quickinfo : 'Entry time'
  CreationTime : Time null;
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Last Changed On'
  LastChangeDate : Date null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Header Text'
entity SalesOrderA2X.A_SalesOrderText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Item Billing Plan Item'
entity SalesOrderA2X.A_SlsOrderItemBillingPlanItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill. Plan No.'
  @sap.quickinfo : 'Billing Plan Number / Invoicing Plan Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key BillingPlan : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item for billing plan/invoice plan/payment cards'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key BillingPlanItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Date Category'
  BillingPlanDateCategory : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Billing Date'
  BillingPlanBillingDate : Date null;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Billing Value'
  @sap.quickinfo : 'Value to be billed/calc. on date in billing/invoice plan'
  BillingPlanAmount : Decimal(16, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5) null;
  @sap.label : 'Invoice Percentage'
  @sap.quickinfo : 'Percentage of value to be invoiced'
  BillingPlanAmountPercent : Decimal(5, 2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Terms of Payment Key'
  CustomerPaymentTerms : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Type'
  @sap.quickinfo : 'Proposed Billing Type for an Order-Related Billing Document'
  ProposedBillingDocumentType : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Date Description'
  BillingPlanDateDescriptionCode : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Block'
  @sap.quickinfo : 'Billing Block for Billing Plan/Invoice Plan Dates'
  BillingBlockReason : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Settlement Start Date'
  @sap.quickinfo : 'Settlement Start Date of Billing Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanServiceStartDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Settlement End Date'
  @sap.quickinfo : 'Settlement End Date of Billing Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanServiceEndDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Status'
  @sap.quickinfo : 'Billing Status for Billing Plan/Invoice Plan Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanRelatedBillgStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Plan Type'
  @sap.quickinfo : 'Billing/Invoicing Plan Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixed Date'
  @sap.quickinfo : 'ID for Adopting Billing/Invoice Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AdoptingBillingDateID : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Rule'
  @sap.quickinfo : 'Rule in billing plan/invoice plan'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanBillingRule : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Usage'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanMilestoneUsage : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Correction Date'
  @sap.quickinfo : 'Indicator for Correction Date in Billing Plan'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillgPlnDteCorrectionRfndType : String(1) null;
  @sap.label : 'Accounting Exchange Rate'
  @sap.quickinfo : 'Exchange Rate for FI Postings'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AccountingExchangeRate : Decimal(9, 5) null;
  @sap.label : 'Reason'
  @sap.quickinfo : 'Reason for Postponement'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PostponementReason : String(255) null;
  @cds.ambiguous : 'missing on condition?'
  to_BillingPlan : Association to SalesOrderA2X.A_SalesOrderItemBillingPlan {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrderItem : Association to SalesOrderA2X.A_SalesOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Header Payment Plan'
entity SalesOrderA2X.A_SlsOrdPaymentPlanItemDetails {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item for billing plan/invoice plan/payment cards'
  key PaymentPlanItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill. Plan No.'
  @sap.quickinfo : 'Billing Plan Number / Invoicing Plan Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PaymentPlan : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'EPayt Type'
  @sap.quickinfo : 'Electronic Payment: Payment Type'
  ElectronicPaymentType : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Number'
  @sap.quickinfo : 'Electronic Payment: Account Number'
  ElectronicPayment : String(25) null;
  @sap.display.format : 'Date'
  @sap.label : 'EPayt Valid from'
  @sap.quickinfo : 'Electronic Payment: Valid from'
  EPaytValidityStartDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'EPayt Valid to'
  @sap.quickinfo : 'Electronic Payment: Valid to'
  EPaytValidityEndDate : Date null;
  @sap.label : 'Account Holder'
  @sap.quickinfo : 'Electronic Payment: Name of Account Holder'
  ElectronicPaymentHolderName : String(40) null;
  @sap.unit : 'AuthorizationCurrency'
  @sap.label : 'Authorized Amount'
  @sap.quickinfo : 'Electronic Payment: Authorized Amount'
  AuthorizedAmountInAuthznCrcy : Decimal(16, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  AuthorizationCurrency : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Auth. Number'
  @sap.quickinfo : 'Electronic Payment: Authorization Number'
  AuthorizationByDigitalPaytSrvc : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Auth. Ref. Code'
  @sap.quickinfo : 'Electronic Payment: Authorization Reference Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AuthorizationByAcquirer : String(15) null;
  @sap.display.format : 'Date'
  @sap.label : 'EPayt Auth. Date'
  @sap.quickinfo : 'Electronic Payment: Authorization Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AuthorizationDate : Date null;
  @sap.label : 'EPayt Auth. Time'
  @sap.quickinfo : 'Electronic Payment: Authorization Time'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AuthorizationTime : Time null;
  @sap.label : 'Text'
  @sap.quickinfo : 'Payment cards: Result text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AuthorizationStatusName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'EPayt Token'
  @sap.quickinfo : 'Token for Digital Payment Integration in SD'
  EPaytByDigitalPaymentSrvc : String(25) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Call Status'
  @sap.quickinfo : 'Electronic Payment: Call Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ElectronicPaymentCallStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rsp to Auth. Check'
  @sap.quickinfo : 'Electronic Payment: Response to Authorization Checks'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EPaytAuthorizationResult : String(1) null;
  @sap.unit : 'AuthorizationCurrency'
  @sap.label : 'Amt to Be Auth.'
  @sap.quickinfo : 'Electronic Payment: Amount to Be Authorized'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EPaytToBeAuthorizedAmount : Decimal(16, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Auth. Expired'
  @sap.quickinfo : 'Electronic Payment: Authorization Expired'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EPaytAuthorizationIsExpired : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Amount Changed'
  @sap.quickinfo : 'Electronic Payment: Amount Changed'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EPaytAmountIsChanged : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preauthorization'
  @sap.quickinfo : 'Electronic Payment: Preauthorization'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PreauthorizationIsRequested : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Paymnt Serv. Provid.'
  @sap.quickinfo : 'Payment Service Provider for Digital Payments'
  PaymentServiceProvider : String(4) null;
  @sap.label : 'Payment Identifier'
  @sap.quickinfo : 'Digital Payments: Payment ID from Payment Service Provider'
  PaymentByPaymentServicePrvdr : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PSP Transaction ID'
  @sap.quickinfo : 'SAP Digital Payments: Transaction ID of PSP'
  TransactionByPaytSrvcPrvdr : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Merchant ID'
  @sap.quickinfo : 'Electronic Payment: Merchant ID at Clearing House'
  MerchantByClearingHouse : String(15) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Auth. Rel. ID'
  @sap.quickinfo : 'Unique identifier of a previous successful authorization'
  PaymentCardAuthznRelationID : String(44) null;
  @sap.unit : 'AuthorizationCurrency'
  @sap.label : 'Billing Value'
  @sap.quickinfo : 'Value to be billed/calc. on date in billing/invoice plan'
  MaximumToBeAuthorizedAmount : Decimal(16, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Higher-level plan'
  @sap.quickinfo : 'Higher-level payment card plan number for billing'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PaytPlnForAuthorizationItem : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Higher-level item'
  @sap.quickinfo : 'Higher-level item in billing plan'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PaytPlnItmForAuthorizationItem : String(6) null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesOrder : Association to SalesOrderA2X.A_SalesOrder {  };
};

@cds.external : true
type SalesOrderA2X.FunctionResult {
  @sap.label : 'Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Boolean : Boolean not null;
};

@cds.external : true
action SalesOrderA2X.rejectApprovalRequest(
  SalesOrder : String(11000) null
) returns SalesOrderA2X.FunctionResult null;

@cds.external : true
action SalesOrderA2X.releaseApprovalRequest(
  SalesOrder : String(11000) null
) returns SalesOrderA2X.FunctionResult null;

