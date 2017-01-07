unit api.b2c.data.common.types;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils;

type

  TServiceType = (stUnknown, stDayOfDelivery, stDeliveryTimeframe, stPreferredTime);

const
  ServiceTypeStr: array[TServiceType] of string =
    ('stUnknown', 'stDayOfDelivery', 'stDeliveryTimeframe', 'stPreferredTime');

implementation

end.

