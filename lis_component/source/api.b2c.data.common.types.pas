unit api.b2c.data.common.types;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils;

type

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

