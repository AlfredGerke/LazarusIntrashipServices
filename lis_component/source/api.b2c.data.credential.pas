unit api.b2c.data.credential;

{$mode delphi}

interface

uses
  Classes,
  SysUtils;

type

  { TCredentialData }

  TCredentialData = record
    class function GetByDefault: TCredentialData; static;

    procedure Clear;
  end;

implementation

{ TCredentialData }

class function TCredentialData.GetByDefault: TCredentialData;
begin
  Result.Clear;
end;

procedure TCredentialData.Clear;
const
  empty_rec: TCredentialData = ();
begin
  Self := empty_rec;
end;

end.

