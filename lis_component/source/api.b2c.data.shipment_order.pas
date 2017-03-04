unit api.b2c.data.shipment_order;

{$mode delphi}

interface

uses
  Classes,
  SysUtils;

type

  { TShipmentOrder }

  TShipmentOrder = record
    class function GetByDefault: TShipmentOrder; static;

    procedure Clear;
  end;

implementation

{ TShipmentOrder }

class function TShipmentOrder.GetByDefault: TShipmentOrder;
begin
  Result.Clear;
end;

procedure TShipmentOrder.Clear;
const
  empty_rec: TShipmentOrder = ();
begin
  Self := empty_rec;
end;

end.

