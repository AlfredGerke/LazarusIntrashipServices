unit api.b2c.data.common.url;

{$mode delphi}

interface

uses
  Classes,
  SysUtils;

type

  { TCommonURL }

  TCommonURL = record
    URL: string;

    class function GetByDefault: TCommonURL; static;
    class function GetByData(AURL: string): TCommonURL; static;

    function IsAvailable: boolean;
    function Check: boolean;

    procedure Clear;
  end;

  { TCommonMailURL }

  TCommonMailURL = record
    URL: TCommonURL;

    class function GetByDefault: TCommonMailURL; static;
    class function GetByData(AURL: string): TCommonMailURL; static; overload;
    class function GetByData(AURL: TCommonURL): TCommonMailURL; static; overload;

    function IsAvailable: boolean;
    function Check: boolean;

    procedure Clear;
  end;


implementation

{ TCommonMailURL }

class function TCommonMailURL.GetByDefault: TCommonMailURL;
begin
  Result.Clear;
end;

class function TCommonMailURL.GetByData(AURL: string): TCommonMailURL;
begin
  Result := TCommonMailURL.GetByDefault;
  Result.URL.GetByData(AURL);
end;

class function TCommonMailURL.GetByData(AURL: TCommonURL): TCommonMailURL;
begin
  Result := TCommonMailURL.GetByDefault;
  Result.URL := AURL;
end;

function TCommonMailURL.IsAvailable: boolean;
begin
  Result := URL.IsAvailable;
end;

function TCommonMailURL.Check: boolean;
begin
  Result := IsAvailable; // Nach bedarf erweitern
end;

procedure TCommonMailURL.Clear;
const
  empty_rec: TCommonMailURL = ();
begin
  Self := empty_rec;
end;

{ TCommonURL }

class function TCommonURL.GetByDefault: TCommonURL;
begin
  Result.Clear;
end;

class function TCommonURL.GetByData(AURL: string): TCommonURL;
begin
  Result := TCommonURL.GetByDefault;
  Result.URL := AURL;
end;

function TCommonURL.IsAvailable: boolean;
begin
  Result := (Trim(URL) <> EmptyStr);
end;

function TCommonURL.Check: boolean;
begin
  Result := IsAvailable; // Nach bedarf erweitern
end;

procedure TCommonURL.Clear;
const
  empty_rec: TCommonURL = ();
begin
  Self := empty_rec;
end;

end.

