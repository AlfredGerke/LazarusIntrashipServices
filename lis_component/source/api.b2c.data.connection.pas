unit api.b2c.data.connection;

{$mode delphi}

interface

uses
  Classes,
  SysUtils;

type

  { TConnectionData }

  TConnectionData = record
    class function GetByDefault: TConnectionData; static;

    procedure Clear;
  end;

implementation

{ TConnectionData }

class function TConnectionData.GetByDefault: TConnectionData;
begin
  Result.Clear;
end;

procedure TConnectionData.Clear;
const
  empty_rec: TConnectionData = ();
begin
  Self := empty_rec;
end;

end.

