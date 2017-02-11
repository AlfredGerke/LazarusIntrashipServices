unit common.key_value_pair;

{$mode delphi}

interface

uses
  Classes,
  SysUtils;

type

  { TKeyValuePair }

  TKeyValuePair = record
    Key: string;
    Value: variant;

    class function GetByDefault(AKey: string;
                                AValue: Variant): TKeyValuePair; static;

    procedure Clear;
  end;

implementation

{ TKeyValuePair }

class function TKeyValuePair.GetByDefault(AKey: string;
  AValue: Variant): TKeyValuePair;
begin
  Result.Clear;
  Result.Key := AKey;
  Result.Value := AValue;
end;

procedure TKeyValuePair.Clear;
const
  empty_rec: TKeyValuePair = ();
begin
  Self := empty_rec;
end;

end.

