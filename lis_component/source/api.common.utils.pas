unit api.common.utils;

{$mode delphi}

interface

uses
  Classes,
  SysUtils;

type

  { TStringToTEnum }

  // s. http://stackoverflow.com/questions/31601707/generic-functions-for-converting-an-enumeration-to-string-and-back
  TStringToTEnum<TEnum> = class
  public
    class function Convert(ATypeString: string): TEnum; overload;

    class function Convert(ATypeString: string;
                           AStringArray: array of string): TEnum; overload;
  end;

  { TTEnumToString }

  // s. http://stackoverflow.com/questions/31601707/generic-functions-for-converting-an-enumeration-to-string-and-back
  TTEnumToString<TEnum> = class
  public
    class function Convert(AType: TENum): string;
  end;

implementation


uses
  typinfo;

{ TStringToTEnum }

class function TStringToTEnum<TEnum>.Convert(ATypeString: string;
  AStringArray: array of string): TEnum;
var
  type_info: PTypeInfo;
  type_data: PTypeData;
  anz: Integer;
begin
  type_info := PTypeInfo(TypeInfo(TEnum));
  if (type_info^.Kind <> tkEnumeration) then
    raise Exception.CreateFmt('Kein Aufzählungstyp: %s!', [type_info^.Name]);

  Result := TEnum(0);

  type_data := GetTypeData(type_info);

  if (Length(AStringArray) = 0) then
  begin
    case type_data^.OrdType of
      otSByte,
      otUByte:
        PByte(@Result)^ := GetEnumValue(type_info, ATypeString);
      otSWord,
      otUWord:
        PWord(@Result)^ := GetEnumValue(type_info, ATypeString);
      otSLong,
      otULong:
        PCardinal(@Result)^ := GetEnumValue(type_info, ATypeString);
    end;
  end
  else
  for anz := type_data.MinValue to type_data.MaxValue do
    if (ATypeString = AStringArray[anz]) then
    begin
      Result := TEnum(anz);
      Exit;
    end;
end;

class function TStringToTEnum<TEnum>.Convert(ATypeString: string): TEnum;
begin
  Result := Convert(ATypeString, []);
end;

{ TTEnumToString }

class function TTEnumToString<TENum>.Convert(AType: TENum): string;
var
  type_info: PTypeInfo;
begin
  type_info := PTypeInfo(TypeInfo(TENum));
  case type_info^.Kind of
    tkEnumeration:
      case GetTypeData(type_info)^.OrdType of
        otSByte,
        otUByte:
          Result := GetEnumName(type_info, PByte(@AType)^);
        otSWord,
        otUWord:
          Result := GetEnumName(type_info, PWord(@AType)^);
        otSLong,
        otULong:
          Result := GetEnumName(type_info, PCardinal(@AType)^);
      end;
    else
      raise EArgumentException.CreateFmt('Kein Aufzählungstyp: %s!', [type_info^.Name]);
  end;
end;


end.

