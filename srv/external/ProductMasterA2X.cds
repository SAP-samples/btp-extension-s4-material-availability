/* checksum : ef41eb2a5145a327f256a84b318dc30c */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ProductMasterA2X {};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Product'
entity ProductMasterA2X.A_Product {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Type'
  ProductType : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'CrossPlantProdStatus'
  @sap.quickinfo : 'Cross-Plant Product Status'
  CrossPlantStatus : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid from'
  @sap.quickinfo : 'Date from which the cross-plant material status is valid'
  CrossPlantStatusValidityDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
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
  @sap.label : 'Last Change'
  @sap.quickinfo : 'Date of Last Change'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Name of Person Who Changed Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangedByUser : String(12) null;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed'
  @sap.quickinfo : 'Change Time Stamp'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDateTime : Timestamp null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Marked for Deletion'
  @sap.quickinfo : 'Deletion Indicator'
  IsMarkedForDeletion : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Old product number'
  @sap.quickinfo : 'Old Product Number'
  ProductOldID : String(40) null;
  @sap.unit : 'WeightUnit'
  @sap.label : 'Gross Weight'
  GrossWeight : Decimal(13, 3) null;
  @sap.label : 'Order Unit'
  @sap.quickinfo : 'Purchase Order Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  PurchaseOrderQuantityUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Source of supply'
  @sap.quickinfo : 'Source of Supply'
  SourceOfSupply : String(1) null;
  @sap.label : 'Unit of Weight'
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3) null;
  @sap.unit : 'WeightUnit'
  @sap.label : 'Net Weight'
  NetWeight : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cntry/Reg of Origin'
  @sap.quickinfo : 'Country/Region of Origin of Material (Non-Preferential Ori.)'
  CountryOfOrigin : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Competitor'
  CompetitorID : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Group'
  ProductGroup : String(9) null;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gen. item cat. grp'
  @sap.quickinfo : 'General item category group'
  ItemCategoryGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Hierarchy'
  ProductHierarchy : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  Division : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Var. Order Unit'
  @sap.quickinfo : 'Variable Purchase Order Unit Active'
  VarblPurOrdUnitIsActive : String(1) null;
  @sap.label : 'Volume Unit'
  @sap.semantics : 'unit-of-measure'
  VolumeUnit : String(3) null;
  @sap.unit : 'VolumeUnit'
  @sap.label : 'Volume'
  MaterialVolume : Decimal(13, 3) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'ANP Code'
  ANPCode : String(9) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Brand'
  Brand : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Procurement rule'
  ProcurementRule : String(1) null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ValidityStartDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Low-Level Code'
  LowLevelCode : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Generic Material'
  @sap.quickinfo : 'Material Number of the Generic Material in Prepack Materials'
  ProdNoInGenProdInPrepackProd : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serial No. Profile'
  @sap.quickinfo : 'Serial Number Profile'
  SerialIdentifierAssgmtProfile : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Size/dimensions'
  SizeOrDimensionText : String(32) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry Std Desc.'
  @sap.quickinfo : 'Industry Standard Description (such as ANSI or ISO)'
  IndustryStandardName : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'GTIN'
  @sap.quickinfo : 'Global Trade Item Number (EAN/UPC/GTIN)'
  ProductStandardID : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN category'
  @sap.quickinfo : 'Category of International Article Number (EAN)'
  InternationalArticleNumberCat : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Configurable'
  @sap.quickinfo : 'Product is Configurable'
  ProductIsConfigurable : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch Management'
  @sap.quickinfo : 'Batch Management Requirement Indicator'
  IsBatchManagementRequired : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ext. Product Group'
  @sap.quickinfo : 'External Product Group'
  ExternalProductGroup : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cross-plant CP'
  @sap.quickinfo : 'Cross-Plant Configurable Product'
  CrossPlantConfigurableProduct : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serialization level'
  @sap.quickinfo : 'Level of Explicitness for Serial Number'
  SerialNoExplicitnessLevel : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mfr Part Number'
  @sap.quickinfo : 'Manufacturer Part Number'
  ProductManufacturerNumber : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturer'
  @sap.quickinfo : 'Manufacturer number'
  ManufacturerNumber : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mfr part profile'
  ManufacturerPartProfile : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'QM in Procur. Active'
  @sap.quickinfo : 'QM in Procurement Is Active'
  QltyMgmtInProcmtIsActive : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry sector'
  IndustrySector : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  ChangeNumber : String(12) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Revision Level'
  MaterialRevisionLevel : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Handling Indicator'
  HandlingIndicator : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'WH Material Group'
  @sap.quickinfo : 'Warehouse Material Group'
  WarehouseProductGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Whse Stor. Condition'
  @sap.quickinfo : 'Warehouse Storage Condition'
  WarehouseStorageCondition : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard HU Type'
  StandardHandlingUnitType : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serial No. Profile'
  @sap.quickinfo : 'Serial Number Profile'
  SerialNumberProfile : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Adjust. Profile'
  @sap.quickinfo : 'Adjustment Profile'
  AdjustmentProfile : String(3) null;
  @sap.label : 'Preferred UoM'
  @sap.quickinfo : 'Preferred Alternative UoM for Warehouse Operations'
  @sap.semantics : 'unit-of-measure'
  PreferredUnitOfMeasure : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pilferable'
  IsPilferable : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relevant for HS'
  @sap.quickinfo : 'Relevant for Hazardous Substances'
  IsRelevantForHzdsSubstances : Boolean null;
  @sap.label : 'Quarant. Per.'
  @sap.quickinfo : 'Quarantine Period'
  QuarantinePeriod : Decimal(3, 0) null;
  @sap.label : 'Time Unit'
  @sap.quickinfo : 'Time Unit for Quarantine Period'
  @sap.semantics : 'unit-of-measure'
  TimeUnitForQuarantinePeriod : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quality Inspec. Grp'
  @sap.quickinfo : 'Quality Inspection Group'
  QualityInspectionGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'CAD Indicator'
  DocumentIsCreatedByCAD : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Handling Unit Type'
  HandlingUnitType : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Varb. Tare Weight'
  @sap.quickinfo : 'Variable Tare Weight'
  HasVariableTareWeight : Boolean null;
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Max. Pack. Length'
  @sap.quickinfo : 'Maximum Packing Length of Packaging Material'
  MaximumPackagingLength : Decimal(15, 3) null;
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Max. Pack. Width'
  @sap.quickinfo : 'Maximum Packing Width of Packaging Material'
  MaximumPackagingWidth : Decimal(15, 3) null;
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Max. Pack. Height'
  @sap.quickinfo : 'Maximum Packing Height of Packaging Material'
  MaximumPackagingHeight : Decimal(15, 3) null;
  @sap.label : 'Unit of Measurement'
  @sap.quickinfo : 'Unit of Measure for Maximum Packing Length/Width/Height'
  @sap.semantics : 'unit-of-measure'
  UnitForMaxPackagingDimensions : String(3) null;
  @cds.ambiguous : 'missing on condition?'
  to_Description : Association to many ProductMasterA2X.A_ProductDescription {  };
  @cds.ambiguous : 'missing on condition?'
  to_Plant : Association to many ProductMasterA2X.A_ProductPlant {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductBasicText : Association to many ProductMasterA2X.A_ProductBasicText {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductInspectionText : Association to many ProductMasterA2X.A_ProductInspectionText {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductProcurement : Association to ProductMasterA2X.A_ProductProcurement {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductPurchaseText : Association to many ProductMasterA2X.A_ProductPurchaseText {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductQualityMgmt : Association to ProductMasterA2X.A_ProductQualityMgmt {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductSales : Association to ProductMasterA2X.A_ProductSales {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductSalesTax : Association to many ProductMasterA2X.A_ProductSalesTax {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductStorage : Association to ProductMasterA2X.A_ProductStorage {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductUnitsOfMeasure : Association to many ProductMasterA2X.A_ProductUnitsOfMeasure {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesDelivery : Association to many ProductMasterA2X.A_ProductSalesDelivery {  };
  @cds.ambiguous : 'missing on condition?'
  to_Valuation : Association to many ProductMasterA2X.A_ProductValuation {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Basic Text'
entity ProductMasterA2X.A_ProductBasicText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.label : 'String'
  @sap.heading : ''
  LongText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Product Description'
entity ProductMasterA2X.A_ProductDescription {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.label : 'Product Description'
  ProductDescription : String(40) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Inspection Text'
entity ProductMasterA2X.A_ProductInspectionText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.label : 'String'
  @sap.heading : ''
  LongText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Material Ledger Account'
entity ProductMasterA2X.A_ProductMLAccount {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Area'
  key ValuationArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Type'
  key ValuationType : String(10) not null;
  @sap.label : 'Crcy Type/Valn View'
  @sap.quickinfo : 'External Currency Type and Valuation View'
  key CurrencyRole : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price control'
  @sap.quickinfo : 'Price control indicator'
  ProductPriceControl : String(1) null;
  @sap.label : 'Price unit'
  PriceUnitQty : Decimal(5, 0) null;
  @sap.unit : 'Currency'
  @sap.label : 'Per. unit price'
  @sap.quickinfo : 'Periodic unit price'
  MovingAveragePrice : Decimal(12, 3) null;
  @sap.unit : 'Currency'
  @sap.label : 'Standard price'
  StandardPrice : Decimal(12, 3) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Material Ledger Prices'
entity ProductMasterA2X.A_ProductMLPrices {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Area'
  key ValuationArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Type'
  key ValuationType : String(10) not null;
  @sap.label : 'Crcy Type/Valn View'
  @sap.quickinfo : 'External Currency Type and Valuation View'
  key CurrencyRole : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5) null;
  @sap.unit : 'Currency'
  @sap.label : 'Future Price'
  FuturePrice : Decimal(12, 3) null;
  @sap.display.format : 'Date'
  @sap.label : 'Future Price From'
  @sap.quickinfo : 'Date from Which a Future Valuation Price Is to Be Valid'
  FuturePriceValidityStartDate : Date null;
  @sap.unit : 'Currency'
  @sap.label : 'Cost'
  PlannedPrice : Decimal(24, 3) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Plant Data'
entity ProductMasterA2X.A_ProductPlant {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cntry/Reg of Origin'
  @sap.quickinfo : 'Country/Region of Origin of Material (Non-Preferential Ori.)'
  CountryOfOrigin : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region of Origin'
  @sap.quickinfo : 'Region of Origin of Material (Non-Preferential Origin)'
  RegionOfOrigin : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Location'
  @sap.quickinfo : 'Issue Storage Location'
  ProductionInvtryManagedLoc : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Status'
  @sap.quickinfo : 'Plant-Specific Material Status'
  ProfileCode : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Date from Which the Plant-Specific Material Status Is Valid'
  ProfileValidityStartDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Availability check'
  @sap.quickinfo : 'Checking Group for Availability Check'
  AvailabilityCheckType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal Year Variant'
  FiscalYearVariant : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Period Indicator'
  PeriodType : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commodity Code'
  Commodity : String(17) null;
  @sap.label : 'GR processing time'
  @sap.quickinfo : 'Goods receipt processing time in days'
  GoodsReceiptDuration : Decimal(3, 0) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance status'
  MaintenanceStatusName : String(15) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'DF at plant level'
  @sap.quickinfo : 'Flag Material for Deletion at Plant Level'
  IsMarkedForDeletion : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Type'
  MRPType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Controller'
  MRPResponsible : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ABC Indicator'
  ABCIndicator : String(1) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Minimum Lot Size'
  MinimumLotSizeQuantity : Decimal(13, 3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Maximum Lot Size'
  MaximumLotSizeQuantity : Decimal(13, 3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Fixed lot size'
  FixedLotSizeQuantity : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Control code'
  @sap.quickinfo : 'Control code for consumption taxes in foreign trade'
  ConsumptionTaxCtrlCode : String(16) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Co-Product'
  IsCoProduct : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ConfigurableProduct'
  @sap.quickinfo : 'Configurable Product'
  ProductIsConfigurable : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Determ. Group'
  @sap.quickinfo : 'Stock determination group'
  StockDeterminationGroup : String(4) null;
  @sap.unit : 'BaseUnit'
  StockInTransferQuantity : Decimal(13, 3) null;
  @sap.unit : 'BaseUnit'
  StockInTransitQuantity : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Post to insp. stock'
  @sap.quickinfo : 'Has Post to Inspection Stock'
  HasPostToInspectionStock : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch Mgmt Rqt(Plnt)'
  @sap.quickinfo : 'Batch Management Requirement Indicator for Plant'
  IsBatchManagementRequired : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serial No. Profile'
  @sap.quickinfo : 'Serial Number Profile'
  SerialNumberProfile : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Neg. stocks in plant'
  @sap.quickinfo : 'Negative stocks allowed in plant'
  IsNegativeStockAllowed : Boolean null;
  @sap.unit : 'BaseUnit'
  GoodsReceiptBlockedStockQty : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consign.Control'
  @sap.quickinfo : 'Consignment Control'
  HasConsignmentCtrl : String(1) null;
  @sap.display.format : 'NonNegative'
  FiscalYearCurrentPeriod : String(4) null;
  @sap.display.format : 'NonNegative'
  FiscalMonthCurrentPeriod : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Procurement Type'
  ProcurementType : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch Management'
  @sap.quickinfo : 'Batch management indicator (internal)'
  IsInternalBatchManaged : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mat. CFOP category'
  @sap.quickinfo : 'Material CFOP category'
  ProductCFOPCategory : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Excise Tax Relevant'
  @sap.quickinfo : 'Excise Tax Relevance Indicator'
  ProductIsExciseTaxRelevant : Boolean null;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conf. Material'
  @sap.quickinfo : 'Configurable Material'
  ConfigurableProduct : String(40) null;
  @sap.label : 'Unit of issue'
  @sap.semantics : 'unit-of-measure'
  GoodsIssueUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material freight grp'
  @sap.quickinfo : 'Material freight group'
  MaterialFreightGroup : String(8) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'OB Reference Materl'
  @sap.quickinfo : 'Reference Material for Original Batches'
  OriginalBatchReferenceMaterial : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'OB Management'
  @sap.quickinfo : 'Indicator for Original Batch Management'
  OriglBatchManagementIsRequired : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Critical Part'
  @sap.quickinfo : 'Indicator: Critical part'
  ProductIsCriticalPrt : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Log. handling group'
  @sap.quickinfo : 'Logistics handling group for workload calculation'
  ProductLogisticsHandlingGroup : String(4) null;
  @cds.ambiguous : 'missing on condition?'
  to_PlantMRPArea : Association to many ProductMasterA2X.A_ProductPlantMRPArea {  };
  @cds.ambiguous : 'missing on condition?'
  to_PlantQualityMgmt : Association to ProductMasterA2X.A_ProductPlantQualityMgmt {  };
  @cds.ambiguous : 'missing on condition?'
  to_PlantSales : Association to ProductMasterA2X.A_ProductPlantSales {  };
  @cds.ambiguous : 'missing on condition?'
  to_PlantStorage : Association to ProductMasterA2X.A_ProductPlantStorage {  };
  @cds.ambiguous : 'missing on condition?'
  to_PlantText : Association to ProductMasterA2X.A_ProductPlantText {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProdPlantInternationalTrade : Association to ProductMasterA2X.A_ProductPlantIntlTrd {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductPlantCosting : Association to ProductMasterA2X.A_ProductPlantCosting {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductPlantForecast : Association to ProductMasterA2X.A_ProductPlantForecasting {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductPlantProcurement : Association to ProductMasterA2X.A_ProductPlantProcurement {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductSupplyPlanning : Association to ProductMasterA2X.A_ProductSupplyPlanning {  };
  @cds.ambiguous : 'missing on condition?'
  to_ProductWorkScheduling : Association to ProductMasterA2X.A_ProductWorkScheduling {  };
  @cds.ambiguous : 'missing on condition?'
  to_StorageLocation : Association to many ProductMasterA2X.A_ProductStorageLocation {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Costing Data at Plant Level'
entity ProductMasterA2X.A_ProductPlantCosting {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Co-Product'
  IsCoProduct : Boolean null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Costing Lot Size'
  @sap.quickinfo : 'Lot Size for Product Costing'
  CostingLotSize : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Variance Key'
  VarianceKey : String(6) null;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Counter'
  TaskListGroupCounter : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group'
  @sap.quickinfo : 'Key for Task List Group'
  TaskListGroup : String(8) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Task List Type'
  TaskListType : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Production Version'
  @sap.quickinfo : 'Production Version To Be Costed'
  CostingProductionVersion : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixed-Price Co-Prod.'
  @sap.quickinfo : 'Fixed-Price Co-Product'
  IsFixedPriceCoProduct : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Procurement Type'
  @sap.quickinfo : 'Special Procurement Type for Costing'
  CostingSpecialProcurementType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative BOM'
  SourceBOMAlternative : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOM Usage'
  ProductBOMUsage : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Do Not Cost'
  ProductIsCostingRelevant : Boolean null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Forecasting Data'
entity ProductMasterA2X.A_ProductPlantForecasting {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Date to'
  @sap.quickinfo : 'To date of the material to be copied for consumption'
  ConsumptionRefUsageEndDate : Date null;
  @sap.label : 'Multiplier'
  @sap.quickinfo : 'Multiplier for reference material for consumption'
  ConsumptionQtyMultiplier : Decimal(4, 2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'RefMatl: consumption'
  @sap.quickinfo : 'Reference material for consumption'
  ConsumptionReferenceProduct : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'RefPlant:consumption'
  @sap.quickinfo : 'Reference plant for consumption'
  ConsumptionReferencePlant : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'International Trade Data'
entity ProductMasterA2X.A_ProductPlantIntlTrd {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region of Origin'
  @sap.quickinfo : 'Country/Region of Origin of Product'
  CountryOfOrigin : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region of Origin'
  RegionOfOrigin : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Control code'
  @sap.quickinfo : 'Control code for consumption taxes in foreign trade'
  ConsumptionTaxCtrlCode : String(16) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'CAS number (pharm.)'
  @sap.quickinfo : 'CAS number for pharmaceutical products in foreign trade'
  ProductCASNumber : String(15) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PRODCOM no.'
  @sap.quickinfo : 'Production statistics: PRODCOM number for foreign trade'
  ProdIntlTradeClassification : String(9) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intrastat Group'
  @sap.quickinfo : 'Material Group for Intrastat'
  ExportAndImportProductGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'MRP Area Data'
entity ProductMasterA2X.A_ProductPlantMRPArea {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Area Plant'
  @sap.quickinfo : 'MRP Area: Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Area'
  key MRPArea : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Type'
  MRPType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Controller'
  MRPResponsible : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Group'
  MRPGroup : String(4) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Reorder Point'
  ReorderThresholdQuantity : Decimal(13, 3) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Planning time fence'
  PlanningTimeFence : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lot Sizing Procedure'
  @sap.quickinfo : 'Lot Sizing Procedure in Materials Planning'
  LotSizingProcedure : String(2) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Rounding value'
  @sap.quickinfo : 'Rounding value for purchase order quantity'
  LotSizeRoundingQuantity : Decimal(13, 3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Minimum Lot Size'
  MinimumLotSizeQuantity : Decimal(13, 3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Maximum Lot Size'
  MaximumLotSizeQuantity : Decimal(13, 3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Maximum Stock Level'
  MaximumStockQuantity : Decimal(13, 3) null;
  @sap.label : 'Assembly scrap (%)'
  @sap.quickinfo : 'Assembly scrap in percent'
  AssemblyScrapPercent : Decimal(5, 2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Procurement'
  @sap.quickinfo : 'Special Procurement Type'
  ProcurementSubType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Location'
  @sap.quickinfo : 'Default Storage Location for External Procurement'
  DfltStorageLocationExtProcmt : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Calendar'
  MRPPlanningCalendar : String(3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Safety Stock'
  SafetyStockQuantity : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Coverage Profile'
  @sap.quickinfo : 'Range-of-Coverage Profile'
  RangeOfCvrgPrflCode : String(3) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Safety Time'
  @sap.quickinfo : 'Safety Time (in Workdays)'
  SafetyDuration : String(2) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Fixed lot size'
  FixedLotSizeQuantity : Decimal(13, 3) null;
  @sap.unit : 'Currency'
  @sap.label : 'LS-Independent Costs'
  @sap.quickinfo : 'Lot-Size-Independent Costs'
  LotSizeIndependentCosts : Decimal(12, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Costs Code'
  @sap.quickinfo : 'Storage Costs Percentage Code'
  IsStorageCosts : String(1) null;
  @sap.label : 'Takt time'
  RqmtQtyRcptTaktTmeInWrkgDays : Decimal(3, 0) null;
  @sap.label : 'Service level (%)'
  @sap.quickinfo : 'Service level'
  SrvcLvl : Decimal(3, 1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion Indicator'
  IsMarkedForDeletion : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Time Profile'
  @sap.quickinfo : 'Period Profile for Safety Time'
  PerdPrflForSftyTme : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Relevant'
  @sap.quickinfo : 'MRP relevancy for dependent requirements'
  IsMRPDependentRqmt : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Safety Time'
  @sap.quickinfo : 'Safety Time Indicator (with or without safety time)'
  IsSafetyTime : String(1) null;
  @sap.label : 'Planned Deliv. Time'
  @sap.quickinfo : 'Planned Delivery Time in Days'
  PlannedDeliveryDurationInDays : Decimal(3, 0) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consider PlDelTime'
  @sap.quickinfo : 'Consider Planned Delivery Time of the MRP Area'
  IsPlannedDeliveryTime : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5) null;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Cycle'
  PlanAndOrderDayDetermination : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rounding Profile'
  RoundingProfile : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Location'
  @sap.quickinfo : 'Issue Storage Location'
  StorageLocation : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Procurement Data'
entity ProductMasterA2X.A_ProductPlantProcurement {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Automatic PO'
  @sap.quickinfo : 'Indicator: &quot;automatic purchase order allowed&quot;'
  IsAutoPurOrdCreationAllowed : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Source list'
  @sap.quickinfo : 'Indicator: Source list requirement'
  IsSourceListRequired : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Source of supply'
  @sap.quickinfo : 'Source of Supply'
  SourceOfSupplyCategory : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'JIT Delivery'
  @sap.quickinfo : 'JIT Delivery Schedules'
  ItmIsRlvtToJITDelivSchedules : String(1) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Quality Management Data'
entity ProductMasterA2X.A_ProductPlantQualityMgmt {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'Max. Storage Period'
  @sap.quickinfo : 'Maximum Storage Period'
  MaximumStoragePeriod : Decimal(5, 0) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'QM Control Key'
  @sap.quickinfo : 'Control Key for Quality Management in Procurement'
  QualityMgmtCtrlKey : String(8) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'QM Material Auth.'
  @sap.quickinfo : 'Material Authorization Group for Activities in QM'
  MatlQualityAuthorizationGroup : String(6) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Post to insp. stock'
  @sap.quickinfo : 'Has Post to Inspection Stock'
  HasPostToInspectionStock : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Documentation reqd'
  @sap.quickinfo : 'Documentation required indicator'
  InspLotDocumentationIsRequired : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Target QM System'
  @sap.quickinfo : 'Required QM System for Supplier'
  SuplrQualityManagementSystem : String(4) null;
  @sap.label : 'Inspection Interval'
  @sap.quickinfo : 'Interval Until Next Recurring Inspection'
  RecrrgInspIntervalTimeInDays : Decimal(5, 0) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Certificate Type'
  ProductQualityCertificateType : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Sales Data at Plant Level'
entity ProductMasterA2X.A_ProductPlantSales {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Loading Group'
  LoadingGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Replacement Part'
  @sap.quickinfo : 'Replacement part'
  ReplacementPartType : String(1) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Base quantity'
  @sap.quickinfo : 'Base quantity for capacity planning in shipping'
  CapPlanningQuantityInBaseUoM : Decimal(13, 3) null;
  @sap.label : 'Processing time'
  @sap.quickinfo : 'Shipping processing time'
  ProductShippingProcessingTime : Decimal(5, 2) null;
  @sap.label : 'Setup time'
  @sap.quickinfo : 'Shipping setup time'
  WrkCentersShipgSetupTimeInDays : Decimal(5, 2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Availability check'
  @sap.quickinfo : 'Checking Group for Availability Check'
  AvailabilityCheckType : String(2) null;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Storage Data at Plant Level'
entity ProductMasterA2X.A_ProductPlantStorage {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'CC Phys. Inv. Ind.'
  @sap.quickinfo : 'Physical Inventory Indicator for Cycle Counting'
  InventoryForCycleCountInd : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Service Level'
  @sap.quickinfo : 'IS-R service level'
  ProvisioningServiceLevel : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'CC indicator fixed'
  @sap.quickinfo : 'CC indicator is fixed'
  CycleCountingIndicatorIsFixed : Boolean null;
  @sap.label : 'Time unit'
  @sap.quickinfo : 'Unit for maximum storage period'
  @sap.semantics : 'unit-of-measure'
  ProdMaximumStoragePeriodUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Putaway/StkRmvl'
  @sap.quickinfo : 'Strategy for Putaway and Stock Removal'
  WrhsMgmtPtwyAndStkRemovalStrgy : String(1) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Plant Text'
entity ProductMasterA2X.A_ProductPlantText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  LongText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Basic Procurement Data'
entity ProductMasterA2X.A_ProductProcurement {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.label : 'Order Unit'
  @sap.quickinfo : 'Purchase Order Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  PurchaseOrderQuantityUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Var. Order Unit'
  @sap.quickinfo : 'Variable Purchase Order Unit Active'
  VarblPurOrdUnitStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing value key'
  @sap.quickinfo : 'Purchasing Value Key'
  PurchasingAcknProfile : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Purchase Text'
entity ProductMasterA2X.A_ProductPurchaseText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.label : 'String'
  @sap.heading : ''
  LongText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Basic Quality Management Data'
entity ProductMasterA2X.A_ProductQualityMgmt {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'QM in Procur. Active'
  @sap.quickinfo : 'QM in Procurement Is Active'
  QltyMgmtInProcmtIsActive : Boolean null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Basic Sales Data'
entity ProductMasterA2X.A_ProductSales {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'X-distr.chain status'
  @sap.quickinfo : 'Cross-distribution-chain material status'
  SalesStatus : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Cross-Distr. Chain Product Validity'
  @sap.quickinfo : 'Date from which the X-distr.-chain Product status is valid'
  SalesStatusValidityDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax classification'
  @sap.quickinfo : 'Tax classification of the material'
  TaxClassification : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Group'
  TransportationGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Sales Organization Data'
entity ProductMasterA2X.A_ProductSalesDelivery {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key ProductSalesOrg : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  key ProductDistributionChnl : String(2) not null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Minimum order qty'
  @sap.quickinfo : 'Minimum order quantity in base unit of measure'
  MinimumOrderQuantity : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivering Plant'
  @sap.quickinfo : 'Delivering Plant (Own or External)'
  SupplyingPlant : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Price Group'
  @sap.quickinfo : 'Product Pricing Group'
  PriceSpecificationProductGroup : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct Assmt Grp Mat.'
  @sap.quickinfo : 'Account Assignment Group for Material'
  AccountDetnProductGroup : String(2) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Minimum Delivery Qty'
  @sap.quickinfo : 'Minimum Delivery Quantity in Delivery Note Processing'
  DeliveryNoteProcMinDelivQty : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Item Category Group'
  @sap.quickinfo : 'Item Category Group from Material Master'
  ItemCategoryGroup : String(4) null;
  @sap.label : 'Unit of measure'
  @sap.quickinfo : 'Unit of measure of delivery unit'
  @sap.semantics : 'unit-of-measure'
  DeliveryQuantityUnit : String(3) null;
  @sap.unit : 'DeliveryQuantityUnit'
  @sap.label : 'Delivery unit'
  DeliveryQuantity : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'DChain-spec. status'
  @sap.quickinfo : 'Distribution-chain-specific material status'
  ProductSalesStatus : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid from'
  @sap.quickinfo : 'Date from which distr.-chain-spec. material status is valid'
  ProductSalesStatusValidityDate : Date null;
  @sap.label : 'Sales Unit'
  @sap.semantics : 'unit-of-measure'
  SalesMeasureUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'DF distr. chain lvl'
  @sap.quickinfo : 'Ind.: Flag material for deletion at distribution chain level'
  IsMarkedForDeletion : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Hierarchy'
  ProductHierarchy : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Group 1'
  FirstSalesSpecProductGroup : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Group 2'
  SecondSalesSpecProductGroup : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Group 3'
  ThirdSalesSpecProductGroup : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Group 4'
  FourthSalesSpecProductGroup : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Group 5'
  FifthSalesSpecProductGroup : String(3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Min. MtO quantity'
  @sap.quickinfo : 'Minimum make-to-order quantity'
  MinimumMakeToOrderOrderQty : Decimal(13, 3) null;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Matl statistics grp'
  @sap.quickinfo : 'Material statistics group'
  LogisticsStatisticsGroup : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Volume Rebate Group'
  @sap.quickinfo : 'Volume rebate group'
  VolumeRebateGroup : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commission Group'
  ProductCommissionGroup : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cash Discount'
  @sap.quickinfo : 'Cash Discount Indicator'
  CashDiscountIsDeductible : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pricing Ref. Matl'
  @sap.quickinfo : 'Pricing Reference Material'
  PricingReferenceProduct : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rounding Profile'
  RoundingProfile : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Unit of Measure Grp'
  @sap.quickinfo : 'Unit of Measure Group'
  ProductUnitGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales unit not var.'
  @sap.quickinfo : 'Variable Sales Unit Not Allowed'
  VariableSalesUnitIsNotAllowed : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Attribute 1'
  @sap.quickinfo : 'ID for product attribute 1'
  ProductHasAttributeID01 : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Attribute 2'
  @sap.quickinfo : 'ID for product attribute 2'
  ProductHasAttributeID02 : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Attribute 3'
  @sap.quickinfo : 'ID for product attribute 3'
  ProductHasAttributeID03 : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Attribute 4'
  @sap.quickinfo : 'ID for product attribute 4'
  ProductHasAttributeID04 : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Attribute 5'
  @sap.quickinfo : 'ID for product attribute 5'
  ProductHasAttributeID05 : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Attribute 6'
  @sap.quickinfo : 'ID for product attribute 6'
  ProductHasAttributeID06 : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Attribute 7'
  @sap.quickinfo : 'ID for product attribute 7'
  ProductHasAttributeID07 : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Attribute 8'
  @sap.quickinfo : 'ID for product attribute 8'
  ProductHasAttributeID08 : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Attribute 9'
  @sap.quickinfo : 'ID for product attribute 9'
  ProductHasAttributeID09 : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Attribute 10'
  @sap.quickinfo : 'ID for product attribute 10'
  ProductHasAttributeID10 : Boolean null;
  @cds.ambiguous : 'missing on condition?'
  to_SalesTax : Association to many ProductMasterA2X.A_ProductSalesTax {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesText : Association to many ProductMasterA2X.A_ProductSalesText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Sales Tax Data'
entity ProductMasterA2X.A_ProductSalesTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Departure Ctry/Reg.'
  @sap.quickinfo : 'Departure Country/Region (from which the goods are sent)'
  key Country : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Category'
  @sap.quickinfo : 'Tax category (sales tax, federal sales tax,...)'
  key TaxCategory : String(4) not null;
  key TaxClassification : String(1) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Sales Text'
entity ProductMasterA2X.A_ProductSalesText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key ProductSalesOrg : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  key ProductDistributionChnl : String(2) not null;
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.label : 'String'
  @sap.heading : ''
  LongText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Basic Storage Data'
entity ProductMasterA2X.A_ProductStorage {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage conditions'
  StorageConditions : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Temp. conditions'
  @sap.quickinfo : 'Temperature conditions indicator'
  TemperatureConditionInd : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Haz. material number'
  @sap.quickinfo : 'Hazardous material number'
  HazardousMaterialNumber : String(40) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'GR slips quantity'
  @sap.quickinfo : 'Quantity: Number of GR/GI slips to be printed'
  NmbrOfGROrGISlipsToPrintQty : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Label type'
  LabelType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Label form'
  LabelForm : String(2) null;
  @sap.label : 'Min. Rem. Shelf Life'
  @sap.quickinfo : 'Minimum Remaining Shelf Life'
  MinRemainingShelfLife : Decimal(4, 0) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Expiration Date'
  ExpirationDate : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Period Ind. for SLED'
  @sap.quickinfo : 'Period Indicator for Shelf Life Expiration Date'
  ShelfLifeExpirationDatePeriod : String(1) null;
  @sap.label : 'Total shelf life'
  TotalShelfLife : Decimal(4, 0) null;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Storage Location Data'
entity ProductMasterA2X.A_ProductStorageLocation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Location'
  key StorageLocation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Bin'
  WarehouseStorageBin : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenanceStatus : String(15) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Phys. Inv. Block'
  @sap.quickinfo : 'Physical Inventory Blocking Indicator'
  PhysicalInventoryBlockInd : String(1) null;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'DF stor. loc. level'
  @sap.quickinfo : 'Flag Material for Deletion at Storage Location Level'
  IsMarkedForDeletion : Boolean null;
  @sap.display.format : 'Date'
  @sap.label : 'Date of Last Count'
  @sap.quickinfo : 'Date of Last Posted Count'
  DateOfLastPostedCntUnRstrcdStk : Date null;
  @sap.label : 'Invent. corr. factor'
  @sap.quickinfo : 'Inventory Correction Factor'
  InventoryCorrectionFactor : Double null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Restricted-use stock'
  @sap.quickinfo : 'Physical inventory indicator for restricted-use stock'
  InvtryRestrictedUseStockInd : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Warehouse stock CY'
  @sap.quickinfo : 'Physical inventory indicator for whse stock in current year'
  InvtryCurrentYearStockInd : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Qual. insp. stock CY'
  @sap.quickinfo : 'Phys. inventory ind. f. stock in qual. insp. in current year'
  InvtryQualInspCurrentYrStkInd : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blocked stock'
  @sap.quickinfo : 'Physical inventory indicator for blocked stock'
  InventoryBlockStockInd : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Restricted use, PP'
  @sap.quickinfo : 'Physical inventory ind. for restricted-use stock, prev.pd'
  InvtryRestStockPrevPeriodInd : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Warehouse stock PY'
  @sap.quickinfo : 'Physical inventory indicator for stock in previous year'
  InventoryStockPrevPeriod : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'QualInspStock prv.pd'
  @sap.quickinfo : 'Phys. inventory ind. f. stock in qual. insp. in prev. period'
  InvtryStockQltyInspPrevPeriod : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blcked stock prev.pd'
  @sap.quickinfo : 'Phys. inventory indicator for blocked stock in prev. period'
  HasInvtryBlockStockPrevPeriod : String(3) null;
  @sap.display.format : 'NonNegative'
  FiscalYearCurrentPeriod : String(4) null;
  @sap.display.format : 'NonNegative'
  FiscalMonthCurrentPeriod : String(2) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal year of current physical inventory indicator'
  @sap.heading : ''
  FiscalYearCurrentInvtryPeriod : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Picking area'
  @sap.quickinfo : 'Picking area for lean WM'
  LeanWrhsManagementPickingArea : String(3) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Supply Planning Data'
entity ProductMasterA2X.A_ProductSupplyPlanning {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Fixed lot size'
  FixedLotSizeQuantity : Decimal(13, 3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Maximum Lot Size'
  MaximumLotSizeQuantity : Decimal(13, 3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Minimum Lot Size'
  MinimumLotSizeQuantity : Decimal(13, 3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Rounding value'
  @sap.quickinfo : 'Rounding value for purchase order quantity'
  LotSizeRoundingQuantity : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lot Sizing Procedure'
  @sap.quickinfo : 'Lot Sizing Procedure in Materials Planning'
  LotSizingProcedure : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Type'
  MRPType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Controller'
  MRPResponsible : String(3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Safety Stock'
  SafetyStockQuantity : Decimal(13, 3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Min. Saf. Stock'
  @sap.quickinfo : 'Minimum Safety Stock'
  MinimumSafetyStockQuantity : Decimal(13, 3) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Planning time fence'
  PlanningTimeFence : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ABC Indicator'
  ABCIndicator : String(1) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Maximum Stock Level'
  MaximumStockQuantity : Decimal(13, 3) null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Reorder Point'
  ReorderThresholdQuantity : Decimal(13, 3) null;
  @sap.label : 'Planned Deliv. Time'
  @sap.quickinfo : 'Planned Delivery Time in Days'
  PlannedDeliveryDurationInDays : Decimal(3, 0) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Safety Time'
  @sap.quickinfo : 'Safety Time (in Workdays)'
  SafetyDuration : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Strategy Group'
  @sap.quickinfo : 'Planning Strategy Group'
  PlanningStrategyGroup : String(2) null;
  @sap.label : 'Tot. repl. lead time'
  @sap.quickinfo : 'Total replenishment lead time (in workdays)'
  TotalReplenishmentLeadTime : Decimal(3, 0) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Procurement Type'
  ProcurementType : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Procurement'
  @sap.quickinfo : 'Special Procurement Type'
  ProcurementSubType : String(2) null;
  @sap.label : 'Assembly scrap (%)'
  @sap.quickinfo : 'Assembly scrap in percent'
  AssemblyScrapPercent : Decimal(5, 2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Availability check'
  @sap.quickinfo : 'Checking Group for Availability Check'
  AvailabilityCheckType : String(2) null;
  @sap.label : 'GR processing time'
  @sap.quickinfo : 'Goods receipt processing time in days'
  GoodsReceiptDuration : Decimal(3, 0) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Group'
  MRPGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Location'
  @sap.quickinfo : 'Default Storage Location for External Procurement'
  DfltStorageLocationExtProcmt : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consumption mode'
  ProdRqmtsConsumptionMode : String(1) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Backward Consumption Period'
  @sap.quickinfo : 'Consumption Period: Backward'
  BackwardCnsmpnPeriodInWorkDays : String(3) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Forward Consumption Period'
  @sap.quickinfo : 'Consumption period: Forward'
  FwdConsumptionPeriodInWorkDays : String(3) null;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Cycle'
  PlanAndOrderDayDetermination : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rounding Profile'
  RoundingProfile : String(4) null;
  @sap.unit : 'Currency'
  @sap.label : 'LS-Independent Costs'
  @sap.quickinfo : 'Lot-Size-Independent Costs'
  LotSizeIndependentCosts : Decimal(12, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning Calendar'
  MRPPlanningCalendar : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Coverage Profile'
  @sap.quickinfo : 'Range-of-Coverage Profile'
  RangeOfCvrgPrflCode : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Safety Time'
  @sap.quickinfo : 'Safety Time Indicator (with or without safety time)'
  IsSafetyTime : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Time Profile'
  @sap.quickinfo : 'Period Profile for Safety Time'
  PerdPrflForSftyTme : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Relevant'
  @sap.quickinfo : 'MRP relevancy for dependent requirements'
  IsMRPDependentRqmt : String(1) null;
  @sap.label : 'In-house production'
  @sap.quickinfo : 'In-house production time'
  InHouseProductionTime : Decimal(3, 0) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cross-Project'
  @sap.quickinfo : 'Indicator for Cross-Project Material'
  ProductIsForCrossProject : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Costs Code'
  @sap.quickinfo : 'Storage Costs Percentage Code'
  StorageCostsPercentageCode : String(1) null;
  @sap.label : 'Service level (%)'
  @sap.quickinfo : 'Service level'
  SrvcLvl : Decimal(3, 1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mixed MRP'
  @sap.quickinfo : 'Mixed MRP indicator'
  MRPAvailabilityType : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Follow-Up Material'
  FollowUpProduct : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Repetitive Manufacturing Enabled'
  RepetitiveManufacturingIsAllwd : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indiv./ Coll.'
  @sap.quickinfo : 'Indicator for Individual and Collective Requirements'
  DependentRequirementsType : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bulk Material'
  @sap.quickinfo : 'Indicator: Bulk Material'
  IsBulkMaterialComponent : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Repetitive Manufacturing Profile'
  RepetitiveManufacturingProfile : String(4) null;
  @sap.label : 'Takt time'
  RqmtQtyRcptTaktTmeInWrkgDays : Decimal(3, 0) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Splitting Indicator'
  ForecastRequirementsAreSplit : String(1) null;
  @sap.display.format : 'Date'
  @sap.label : 'Effective-Out Date'
  EffectiveOutDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP profile'
  @sap.quickinfo : 'Material: MRP profile'
  MRPProfile : String(4) null;
  @sap.label : 'Component Scrap (%)'
  @sap.quickinfo : 'Component Scrap in Percent'
  ComponentScrapInPercent : Decimal(5, 2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Discontinuation ind.'
  @sap.quickinfo : 'Discontinuation indicator'
  ProductIsToBeDiscontinued : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Requirements group'
  @sap.quickinfo : 'Indicator for Requirements Grouping'
  ProdRqmtsAreConsolidated : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Backflush'
  @sap.quickinfo : 'Indicator: Backflush'
  MatlCompIsMarkedForBackflush : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proposed Supply Area'
  @sap.quickinfo : 'Proposed Supply Area in Material Master Record'
  ProposedProductSupplyArea : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Action Control'
  @sap.quickinfo : 'Action Control: Planned Order Processing'
  PlannedOrderActionControl : String(2) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Units of Measure'
entity ProductMasterA2X.A_ProductUnitsOfMeasure {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.label : 'AlternativeUnit'
  @sap.quickinfo : 'Alternative Unit of Measure for Stockkeeping Unit'
  @sap.semantics : 'unit-of-measure'
  key AlternativeUnit : String(3) not null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Units / Quantity - Base Unit of Measure'
  @sap.quickinfo : 'Numerator for Conversion to Base Units of Measure'
  QuantityNumerator : Decimal(5, 0) null;
  @sap.unit : 'AlternativeUnit'
  @sap.label : 'Units / Quantity - Alt Unit of Measure'
  @sap.quickinfo : 'Denominator for conversion to base units of measure'
  QuantityDenominator : Decimal(5, 0) null;
  @sap.unit : 'VolumeUnit'
  @sap.label : 'Volume'
  MaterialVolume : Decimal(13, 3) null;
  @sap.label : 'Volume Unit'
  @sap.semantics : 'unit-of-measure'
  VolumeUnit : String(3) null;
  @sap.unit : 'WeightUnit'
  @sap.label : 'Gross Weight'
  GrossWeight : Decimal(13, 3) null;
  @sap.label : 'Unit of Weight'
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN/UPC'
  @sap.quickinfo : 'International Article Number (EAN/UPC)'
  GlobalTradeItemNumber : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'GTIN Category'
  @sap.quickinfo : 'Category of Global Trade Item Number (GTIN)'
  GlobalTradeItemNumberCategory : String(2) null;
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Length'
  UnitSpecificProductLength : Decimal(13, 3) null;
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Width'
  UnitSpecificProductWidth : Decimal(13, 3) null;
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Height'
  UnitSpecificProductHeight : Decimal(13, 3) null;
  @sap.label : 'Unit of Dimension'
  @sap.quickinfo : 'Unit of Dimension for Length/Width/Height'
  @sap.semantics : 'unit-of-measure'
  ProductMeasurementUnit : String(3) null;
  @sap.label : 'Lower-level unit'
  @sap.quickinfo : 'Lower-Level Unit of Measure in a Packing Hierarchy'
  @sap.semantics : 'unit-of-measure'
  LowerLevelPackagingUnit : String(3) null;
  @sap.label : 'Rem.Vol.After Nestng'
  @sap.quickinfo : 'Remaining Volume after Nesting (in Percentage)'
  RemainingVolumeAfterNesting : Decimal(3, 0) null;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Max. Stacking Factor'
  @sap.quickinfo : 'Maximum Stacking Factor'
  MaximumStackingFactor : Integer null;
  @sap.label : 'Capacity Usage'
  CapacityUsage : Decimal(15, 3) null;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) null;
  @cds.ambiguous : 'missing on condition?'
  to_InternationalArticleNumber : Association to many ProductMasterA2X.A_ProductUnitsOfMeasureEAN {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'GTIN Data'
entity ProductMasterA2X.A_ProductUnitsOfMeasureEAN {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.label : 'Display Unit/Measure'
  @sap.quickinfo : 'Unit of Measure for Display'
  @sap.semantics : 'unit-of-measure'
  key AlternativeUnit : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consecutive number'
  @sap.quickinfo : 'Consecutive Number'
  key ConsecutiveNumber : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN/UPC'
  @sap.quickinfo : 'International Article Number (EAN/UPC)'
  ProductStandardID : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'GTIN Category'
  @sap.quickinfo : 'Category of Global Trade Item Number (GTIN)'
  InternationalArticleNumberCat : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Main EAN'
  @sap.quickinfo : 'Indicator: Main EAN'
  IsMainGlobalTradeItemNumber : Boolean null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Valuation Area Data'
entity ProductMasterA2X.A_ProductValuation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Area'
  key ValuationArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Type'
  key ValuationType : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Class'
  ValuationClass : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price determ.'
  @sap.quickinfo : 'Material Price Determination: Control'
  PriceDeterminationControl : String(1) null;
  @sap.unit : 'Currency'
  @sap.label : 'Standard price'
  StandardPrice : Decimal(12, 3) null;
  @sap.label : 'Price unit'
  PriceUnitQty : Decimal(5, 0) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price Control'
  InventoryValuationProcedure : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Del. flag val. type'
  @sap.quickinfo : 'Deletion flag for all material data of a valuation type'
  IsMarkedForDeletion : Boolean null;
  @sap.unit : 'Currency'
  @sap.label : 'Moving price'
  @sap.quickinfo : 'Moving Average Price/Periodic Unit Price'
  MovingAveragePrice : Decimal(12, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Category'
  ValuationCategory : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Usage'
  @sap.quickinfo : 'Usage of the Product'
  ProductUsageType : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Origin'
  @sap.quickinfo : 'Origin of the Product'
  ProductOriginType : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Produced in-house'
  IsProducedInhouse : Boolean null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'ProdCostEst.No.'
  @sap.quickinfo : 'Cost Estimate Number - Product Costing'
  ProdCostEstNumber : String(12) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proj. stk val. class'
  @sap.quickinfo : 'Valuation Class for Project Stock'
  ProjectStockValuationClass : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'VC: Sales order stk'
  @sap.quickinfo : 'Valuation Class for Sales Order Stock'
  ValuationClassSalesOrderStock : String(4) null;
  @sap.unit : 'Currency'
  @sap.label : 'Planned price 1'
  @sap.quickinfo : 'Future Planned Price 1'
  PlannedPrice1InCoCodeCrcy : Decimal(12, 3) null;
  @sap.unit : 'Currency'
  @sap.label : 'Planned price 2'
  @sap.quickinfo : 'Future Planned Price 2'
  PlannedPrice2InCoCodeCrcy : Decimal(12, 3) null;
  @sap.unit : 'Currency'
  @sap.label : 'Planned price 3'
  @sap.quickinfo : 'Future Planned Price 3'
  PlannedPrice3InCoCodeCrcy : Decimal(12, 3) null;
  @sap.display.format : 'Date'
  @sap.label : 'Planned price date 1'
  @sap.quickinfo : 'Date from Which Future Planned Price 1 Is Valid'
  FuturePlndPrice1ValdtyDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Planned price date 2'
  @sap.quickinfo : 'Date from Which Future Planned Price 2 Is Valid'
  FuturePlndPrice2ValdtyDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Planned price date 3'
  @sap.quickinfo : 'Date from Which Future Planned Price 3 Is Valid'
  FuturePlndPrice3ValdtyDate : Date null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Price Unit'
  @sap.quickinfo : 'Price unit for valuation prices based on tax/commercial law'
  TaxBasedPricesPriceUnitQty : Decimal(5, 0) null;
  @sap.display.format : 'Date'
  @sap.label : 'Last Price Change'
  @sap.quickinfo : 'Date of Last Price Change'
  PriceLastChangeDate : Date null;
  @sap.unit : 'Currency'
  @sap.label : 'Future planned price'
  PlannedPrice : Decimal(12, 3) null;
  @sap.unit : 'Currency'
  @sap.label : 'Previous Price'
  PrevInvtryPriceInCoCodeCrcy : Decimal(12, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5) null;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) null;
  @cds.ambiguous : 'missing on condition?'
  to_MLAccount : Association to many ProductMasterA2X.A_ProductMLAccount {  };
  @cds.ambiguous : 'missing on condition?'
  to_MLPrices : Association to many ProductMasterA2X.A_ProductMLPrices {  };
  @cds.ambiguous : 'missing on condition?'
  to_ValuationAccount : Association to ProductMasterA2X.A_ProductValuationAccount {  };
  @cds.ambiguous : 'missing on condition?'
  to_ValuationCosting : Association to ProductMasterA2X.A_ProductValuationCosting {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Valuation Account Data'
entity ProductMasterA2X.A_ProductValuationAccount {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Area'
  key ValuationArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Type'
  key ValuationType : String(10) not null;
  @sap.unit : 'Currency'
  @sap.label : 'Commercial price 1'
  @sap.quickinfo : 'Valuation price based on commercial law: level 1'
  CommercialPrice1InCoCodeCrcy : Decimal(12, 3) null;
  @sap.unit : 'Currency'
  @sap.label : 'Commercial price 2'
  @sap.quickinfo : 'Valuation price based on commercial law: level 2'
  CommercialPrice2InCoCodeCrcy : Decimal(12, 3) null;
  @sap.unit : 'Currency'
  @sap.label : 'Commercial price 3'
  @sap.quickinfo : 'Valuation price based on commercial law: level 3'
  CommercialPrice3InCoCodeCrcy : Decimal(12, 3) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Devaluation Ind.'
  @sap.quickinfo : 'Lowest value: devaluation indicator'
  DevaluationYearCount : String(2) null;
  @sap.label : 'Future Price'
  FutureEvaluatedAmountValue : Decimal(12, 3) null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid from'
  @sap.quickinfo : 'Date as of which the price is valid'
  FuturePriceValidityStartDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'TRUE'
  @sap.quickinfo : 'Data element for domain BOOLE: TRUE (=''X'') and FALSE (='' '')'
  IsLIFOAndFIFORelevant : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'LIFO Pool'
  @sap.quickinfo : 'Pool number for LIFO valuation'
  LIFOValuationPoolNumber : String(4) null;
  @sap.unit : 'Currency'
  @sap.label : 'Tax price 1'
  @sap.quickinfo : 'Valuation price based on tax law: level 1'
  TaxPricel1InCoCodeCrcy : Decimal(12, 3) null;
  @sap.unit : 'Currency'
  @sap.label : 'Tax price 2'
  @sap.quickinfo : 'Valuation price based on tax law: level 2'
  TaxPrice2InCoCodeCrcy : Decimal(12, 3) null;
  @sap.unit : 'Currency'
  @sap.label : 'Tax price 3'
  @sap.quickinfo : 'Valuation price based on tax law: level 3'
  TaxPrice3InCoCodeCrcy : Decimal(12, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Valuation Costing Data'
entity ProductMasterA2X.A_ProductValuationCosting {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Area'
  key ValuationArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Type'
  key ValuationType : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'With Qty Structure'
  @sap.quickinfo : 'Material Is Costed with Quantity Structure'
  IsMaterialCostedWithQtyStruc : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material origin'
  @sap.quickinfo : 'Material-related origin'
  IsMaterialRelatedOrigin : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Origin Group'
  @sap.quickinfo : 'Origin Group as Subdivision of Cost Element'
  CostOriginGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overhead Group'
  @sap.quickinfo : 'Costing Overhead Group'
  CostingOverheadGroup : String(10) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Work Scheduling Data'
entity ProductMasterA2X.A_ProductWorkScheduling {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Base quantity'
  MaterialBaseQuantity : Decimal(13, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Unltd Overdelivery'
  @sap.quickinfo : 'Indicator: Unlimited Overdelivery Allowed'
  UnlimitedOverDelivIsAllowed : Boolean null;
  @sap.label : 'Overdely tolerance'
  @sap.quickinfo : 'Overdelivery tolerance limit'
  OverDelivToleranceLimit : Decimal(3, 1) null;
  @sap.label : 'Underdely tolerance'
  @sap.quickinfo : 'Underdelivery tolerance limit'
  UnderDelivToleranceLimit : Decimal(3, 1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Location'
  @sap.quickinfo : 'Issue Storage Location'
  ProductionInvtryManagedLoc : String(4) null;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) null;
  @sap.label : 'Processing time'
  ProductProcessingTime : Decimal(5, 2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Prodn Supervisor'
  @sap.quickinfo : 'Production Supervisor'
  ProductionSupervisor : String(3) null;
  @sap.label : 'Production unit'
  @sap.semantics : 'unit-of-measure'
  ProductProductionQuantityUnit : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch entry'
  @sap.quickinfo : 'Determination of batch entry in the production/process order'
  ProdnOrderIsBatchRequired : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Grouping'
  @sap.quickinfo : 'Group of Materials for Transition Matrix'
  TransitionMatrixProductsGroup : String(20) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change overall prof.'
  @sap.quickinfo : 'Overall profile for order change management'
  OrderChangeManagementProfile : String(6) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Backflush'
  @sap.quickinfo : 'Indicator: Backflush'
  MatlCompIsMarkedForBackflush : String(1) null;
  @sap.label : 'Setup time'
  @sap.quickinfo : 'Setup and teardown time'
  SetupAndTeardownTime : Decimal(5, 2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Production Scheduling Profile'
  ProductionSchedulingProfile : String(6) null;
  @sap.label : 'Interoperation'
  @sap.quickinfo : 'Interoperation time'
  TransitionTime : Decimal(5, 2) null;
};

