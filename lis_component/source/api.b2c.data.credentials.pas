unit api.b2c.data.credentials;

{$mode delphi}

interface

uses
  Classes,
  SysUtils,
  api.b2c.data.common.credentials;

type

  { TCredentials }

  TCredentials = record
    CGI: TCommonCredentials;
    WebService: TCommonCredentials;

    function Cneck: boolean;

    class function GetByDefault: TCredentials; static;
    class function GetByCredentials(ACGI: TCommonCredentials;
                                    AWebService: TCommonCredentials): TCredentials; static;
    class function GetByData(AUser: string;
                             APassword: string;
                             AID: string;
                             ASignature: string): TCredentials; static;


    procedure Clear;
  end;

implementation

{ TCredentials }

function TCredentials.Cneck: boolean;
begin
  Result := (CGI.IsAvailable and WebService.IsAvailable);
end;

class function TCredentials.GetByDefault: TCredentials;
begin
  Result.Clear;
end;

class function TCredentials.GetByCredentials(ACGI: TCommonCredentials;
  AWebService: TCommonCredentials): TCredentials;
begin
  Result := TCredentials.GetByDefault;
  Result.CGI := ACGI;
  Result.WebService := AWebService;
end;

class function TCredentials.GetByData(AUser: string;
  APassword: string;
  AID: string;
  ASignature: string): TCredentials;
begin
  Result := TCredentials.GetByDefault;
  Result.CGI.GetByData(AUser, APassword);
  Result.WebService.GetByData(AID, ASignature);
end;

procedure TCredentials.Clear;
const
  empty_rec: TCredentials = ();
begin
  Self := empty_rec;
end;

end.

