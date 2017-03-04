unit api.b2c.data.common.types;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  api.b2c.data.credential,
  api.b2c.data.connection,
  api.b2c.data.dhl_contract,
  api.b2c.data.shipment_order;

type

  TOnGetCredentials = procedure (var ACredentialData: TCredentialData) of object;
  TOnGetConnectionData = procedure (var AConnectionData: TConnectionData) of object;
  TOnGetDHLContractData = procedure (var AContractData: TDHLContractData) of object;
  TOnGetShipmentOrder = procedure (var AShipmentOrder: TShipmentOrder) of object;
  TOnDecryptPassword = procedure (var APassword: string) of object;
  TOnEncryptPassword = procedure (var APassword: string) of object;

  TServiceType = (stUnknown, stDayOfDelivery, stDeliveryTimeframe,
    stPreferredTime, stIndividualSenderRequirement, stPackagingReturn,
    stReturnImmediately, stNoticeOfNonDeliverability, stShipmentHandling,
    stEndorsement, stVisualCheckOfAge, stPreferredLocation,
    stPreferredNeighbour, stPreferredDay, stGoGreen,
    stPerishables, stPersonally, stNoNeighbourDelivery,
    stNamedPersonOnly, stReturnReceipt, stPremium,
    stCashOnDelivery, stAdditionalInsurance, stBulkyGoods,
    stIdentCheck);

const
  ServiceTypeStr: array[TServiceType] of string =
    ('Unknown', 'DayOfDelivery', 'DeliveryTimeframe', 'PreferredTime', 'IndividualSenderRequirement',
     'PackagingReturn', 'ReturnImmediately', 'NoticeOfNonDeliverability', 'ShipmentHandling',
     'Endorsement', 'VisualCheckOfAge', 'PreferredLocation',
     'PreferredNeighbour', 'PreferredDay', 'GoGreen',
     'Perishables', 'Personally', 'NoNeighbourDelivery',
     'NamedPersonOnly', 'ReturnReceipt', 'Premium',
     'CashOnDelivery', 'AdditionalInsurance', 'BulkyGoods',
     'IdentCheck');

implementation

end.

