unit service_record;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  common_types;

type

  { TServiceRecord }

  TServiceRecord = record
    ServiceType: TServiceType;
    Active: Boolean;

    class function GetByDefault: TServiceRecord; static;

    procedure Clear;
  end;

implementation

{ TServiceRecord }

class function TServiceRecord.GetByDefault: TServiceRecord;
begin
  Result.Clear;
end;

procedure TServiceRecord.Clear;
const
  empty_rec: TServiceRecord = ();
begin
  Self := empty_rec;
end;

end.

