unit api.b2c.data.connection;

{$mode delphi}

interface

uses
  Classes,
  SysUtils,
  api.b2c.data.common.url,
  api.b2c.data.common.proxy;

type

  { TConnectionData }

  TConnectionData = record
    SandBox: TCommonURL;
    Productiv: TCommonURL;
    Proxy: TCommonProxyData;
    UseTestSystem: boolean;

    class function GetByDefault: TConnectionData; static;

    class function GetByData(ASandBox: TCommonURL;
                             AProductiv: TCommonURL;
                             AProxy: TCommonProxyData;
                             AUseTestSystem: boolean = False): TConnectionData; static; overload;

    class function GetByData(ASandBox: string;
                             AProductiv: string;
                             AUseTestSystem: boolean = False;
                             AProxyServer: string = '';
                             AProxyPort: integer = -1;
                             AProxyUser: string = '';
                             AProxyPassword: string = ''): TConnectionData; static; overload;

    function IsAvailable: boolean;

    function GetURL: TCommonURL;

    procedure Clear;
  end;

implementation

{ TConnectionData }

class function TConnectionData.GetByDefault: TConnectionData;
begin
  Result.Clear;
end;

class function TConnectionData.GetByData(ASandBox: TCommonURL;
  AProductiv: TCommonURL;
  AProxy: TCommonProxyData;
  AUseTestSystem: boolean = False): TConnectionData;
begin
  Result := TConnectionData.GetByDefault;
  Result.SandBox := ASandBox;
  Result.Productiv := AProductiv;
  Result.UseTestSystem := AUseTestSystem;

  if AProxy.IsAvailable then
    Result.Proxy := AProxy;
end;

class function TConnectionData.GetByData(ASandBox: string;
  AProductiv: string;
  AUseTestSystem: boolean = False;
  AProxyServer: string = '';
  AProxyPort: integer = -1;
  AProxyUser: string = '';
  AProxyPassword: string = ''): TConnectionData;
var
  common_proxy: TCommonProxyData;
begin
  Result := TConnectionData.GetByDefault;
  Result.SandBox.GetByData(ASandBox);
  Result.Productiv.GetByData(AProductiv);
  Result.UseTestSystem := AUseTestSystem;

  common_proxy := TCommonProxyData.GetByData(AProxyServer, AProxyPort, AProxyUser, AProxyPassword);
  if common_proxy.IsAvailable then
    Result.Proxy.GetByData(AProxyServer, AProxyPort, AProxyUser, AProxyPassword);
end;

function TConnectionData.IsAvailable: boolean;
begin
  Result :=
    ((UseTestSystem and SandBox.IsAvailable) or (not UseTestSystem and Productiv.IsAvailable));
end;

function TConnectionData.GetURL: TCommonURL;
begin
  if UseTestSystem then
    Result := SandBox
  else
    Result := Productiv;
end;

procedure TConnectionData.Clear;
const
  empty_rec: TConnectionData = ();
begin
  Self := empty_rec;
end;

end.

