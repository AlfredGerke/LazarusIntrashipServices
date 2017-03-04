unit api.b2c.data.dhl_service;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  api.b2c.data.common.types,
  common.key_value_list;

type

  TDHLServiceDetails = class(TKeyValueList)
  end;

  { TDHLServiceData }

  TDHLServiceData = record
    ServiceType: TServiceType;
    Active: Boolean;

    Details: TDHLServiceDetails;

    class function GetByDefault: TDHLServiceData; static;

    procedure Clear(AFreeAndNil: boolean = False);
  end;

implementation

{ TDHLServiceData }

class function TDHLServiceData.GetByDefault: TDHLServiceData;
begin
  Result.Clear;
  Result.Details := TDHLServiceDetails.Create;
end;

procedure TDHLServiceData.Clear(AFreeAndNil: boolean = False);
const
  empty_rec: TDHLServiceData = ();
begin
  if AFreeAndNil then
    if Assigned(Details) then
      FreeAndNil(Details);

  Self := empty_rec;
end;

end.

