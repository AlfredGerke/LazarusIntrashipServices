unit api.b2c.data.common.credentials;

{$mode delphi}

interface

uses
  Classes,
  SysUtils;

type

  { TCommonCredentials }

  TCommonCredentials = record
    User: string;
    Password: string;

    function IsAvailable: boolean;

    class function GetByDefault: TCommonCredentials; static;
    class function GetByData(AUser: string;
                             APassword: string): TCommonCredentials; static;

    procedure Clear;
  end;

implementation

{ TCommonCredentials }

function TCommonCredentials.IsAvailable: boolean;
begin
  Result := ((Trim(User) <> EmptyStr) and (Trim(Password) <> EmptyStr));
end;

class function TCommonCredentials.GetByDefault: TCommonCredentials;
begin
  Result.Clear;
end;

class function TCommonCredentials.GetByData(AUser: string;
  APassword: string): TCommonCredentials;
begin
  Result := TCommonCredentials.GetByDefault;
  Result.User := AUser;
  Result.Password := APassword;
end;

procedure TCommonCredentials.Clear;
const
  empty_rec: TCommonCredentials = ();
begin
  Self := empty_rec;
end;

end.

