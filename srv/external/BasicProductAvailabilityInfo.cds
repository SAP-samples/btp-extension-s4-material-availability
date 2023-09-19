/* checksum : 2a4cbc1aba98b52774eac054f9ee3629 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service BasicProductAvailabilityInfo {};

@cds.external : true
type BasicProductAvailabilityInfo.AvailabilityRecord {
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Perd Start Date Time'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PeriodStartUTCDateTime : DateTime not null;
  @sap.label : 'Perd Start Time Zone'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PeriodStartTimeZone : String(6) not null;
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Perd End Date Time'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PeriodEndUTCDateTime : DateTime not null;
  @sap.label : 'Perd End Time Zone'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PeriodEndTimeZone : String(6) not null;
  @sap.unit : 'BaseUnit'
  @sap.label : 'Available Quantity'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  AvailableQuantityInBaseUnit : Decimal(16, 3) not null;
  @sap.label : 'Unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3) not null;
};

@cds.external : true
function BasicProductAvailabilityInfo.DetermineAvailabilityAt(
  @sap.label : 'Plant'
  SupplyingPlant : String(4) null,
  @sap.label : 'Material'
  Material : String(40) null,
  @sap.label : 'Checking rule'
  ATPCheckingRule : String(2) null,
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Date'
  RequestedUTCDateTime : Timestamp null
) returns BasicProductAvailabilityInfo.AvailabilityRecord null;

@cds.external : true
function BasicProductAvailabilityInfo.DetermineAvailabilityOf(
  @sap.label : 'Requested Qty'
  RequestedQuantityInBaseUnit : Decimal(3, 3) null,
  @sap.label : 'Material'
  Material : String(40) null,
  @sap.label : 'Plant'
  SupplyingPlant : String(4) null,
  @sap.label : 'Checking rule'
  ATPCheckingRule : String(2) null
) returns BasicProductAvailabilityInfo.AvailabilityRecord null;

@cds.external : true
function BasicProductAvailabilityInfo.CalculateAvailabilityTimeseries(
  @sap.label : 'Checking rule'
  ATPCheckingRule : String(2) null,
  @sap.label : 'Material'
  Material : String(40) null,
  @sap.label : 'Plant'
  SupplyingPlant : String(4) null
) returns many BasicProductAvailabilityInfo.AvailabilityRecord null;

