unit api.b2c.data.service_record;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  api.b2c.data.common.types,
  common.key_value_list;

type

  TServiceRecordDetails = class(TKeyValueList)
  end;

  { TServiceRecord }

  TServiceRecord = record
    ServiceType: TServiceType;
    Active: Boolean;

    Details: TServiceRecordDetails;

    class function GetByDefault: TServiceRecord; static;

    procedure Clear(AFreeAndNil: boolean = False);
  end;

implementation

{ TServiceRecord }

class function TServiceRecord.GetByDefault: TServiceRecord;
begin
  Result.Clear;
  Result.Details := TServiceRecordDetails.Create;
end;

procedure TServiceRecord.Clear(AFreeAndNil: boolean = False);
const
  empty_rec: TServiceRecord = ();
begin
  if AFreeAndNil then
    if Assigned(Details) then
      FreeAndNil(Details);

  Self := empty_rec;
end;

end.

