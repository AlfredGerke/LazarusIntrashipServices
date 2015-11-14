unit IntrashipServicesUtils;

{$mode delphi}{$H+}

interface

uses
  SysUtils;

function GetShortStringAsString(AShortString: ShortString): string;

implementation

function GetShortStringAsString(AShortString: ShortString): string;
begin
  Result := String(AShortString);
end;

end.

