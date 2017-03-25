unit api.b2c.data.common.proxy;

{$mode delphi}

interface

uses
  Classes,
  SysUtils,
  api.b2c.data.common.credentials;

type

  { TCommonProxyData }

  TCommonProxyData = record
    Server: string;
    Port: integer;
    Credentials: TCommonCredentials;

    class function GetByDefault: TCommonProxyData; static;
    class function GetByData(AServer: string;
                             APort: integer;
                             ACredentials: TCommonCredentials): TCommonProxyData; overload; static;
    class function GetByData(AServer: string;
                             APort: integer;
                             AUser: string;
                             APassword: string): TCommonProxyData; overload; static;

    procedure Clear;

    function IsAvailable: boolean;
  end;

implementation

{ TCommonProxyData }

class function TCommonProxyData.GetByDefault: TCommonProxyData;
begin
  Result.Clear;
end;

class function TCommonProxyData.GetByData(AServer: string;
  APort: integer;
  ACredentials: TCommonCredentials): TCommonProxyData;
begin
  Result := TCommonProxyData.GetByDefault;
  Result.Server := AServer;
  Result.Port := APort;
  Result.Credentials := ACredentials;
end;

class function TCommonProxyData.GetByData(AServer: string;
  APort: integer;
  AUser: string;
  APassword: string): TCommonProxyData;
begin
  Result := TCommonProxyData.GetByDefault;
  Result.Server := AServer;
  Result.Port := APort;
  Result.Credentials.GetByData(AUser, APassword);
end;

procedure TCommonProxyData.Clear;
const
  empty_rec: TCommonProxyData = ();
begin
  Self := empty_rec;
end;

function TCommonProxyData.IsAvailable: boolean;
begin
  Result :=
    ((Trim(Server) <> EmptyStr) and ((Port >= 0) and (Port <= 65535)) and Credentials.IsAvailable);
end;

end.

