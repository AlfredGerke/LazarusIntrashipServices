unit common.key_value_list;

{$mode delphi}

interface

uses
  Classes,
  SysUtils,
  common.record_list,
  common.key_value_pair;

type

  { TKeyValueList }

  TKeyValueList = class(TCommonRecordList<TKeyValuePair>)
  private
    FKeyIndex: TStrings;
  protected
    procedure ClearItem(AItem: TKeyValuePair); override;
  public
    function ValueIsAvailable(AKey: string): boolean;
    function GetValue(AKey: string): Variant;
    procedure SetValue(AKey: string;
                       AValue: Variant);

    function Add(const Value: TKeyValuePair): integer;

    constructor Create; reintroduce; overload;
    destructor Destroy; override;
  end;

implementation

uses
  Variants;

{ TKeyValueList }

function TKeyValueList.Add(const Value: TKeyValuePair): integer;
begin
  Result := inherited Add(Value);

  if (Result > -1) then
  begin
    if not Assigned(FKeyIndex) then
      FKeyIndex := TStringList.Create;

    FKeyIndex.Add(Value.Key);
  end;
end;

procedure TKeyValueList.ClearItem(AItem: TKeyValuePair);
begin
  AItem.Clear;
end;

function TKeyValueList.ValueIsAvailable(AKey: string): boolean;
var
  index: integer;
  key_value_pair: TKeyValuePair;
begin
  Result := False;

  if Assigned(FKeyIndex) then
  begin
    index := FKeyIndex.IndexOf(AKey);
    if (index > -1) then
    begin
      key_value_pair := Items[index];

      Result := not VarIsNull(key_value_pair.Value);
    end;
  end;
end;

function TKeyValueList.GetValue(AKey: string): Variant;
var
  index: integer;
  key_value_pair: TKeyValuePair;
begin
  Result := null;

  if Assigned(FKeyIndex) then
  begin
    index := FKeyIndex.IndexOf(AKey);
    if (index > -1) then
    begin
      key_value_pair := Items[index];

      Result := key_value_pair.Value;
    end;
  end;
end;

procedure TKeyValueList.SetValue(AKey: string;
  AValue: Variant);
var
  index: integer;
  key_value_pair: TKeyValuePair;
begin
  if Assigned(FKeyIndex) then
  begin
    index := FKeyIndex.IndexOf(AKey);
    if (index > -1) then
    begin
      Delete(index);
      FKeyIndex.Delete(index);

      Add(TKeyValuePair.GetByDefault(AKey, AValue));
    end;
  end;
end;

constructor TKeyValueList.Create;
begin
  inherited Create;

  Duplicates := dupError;
end;

destructor TKeyValueList.Destroy;
begin
  if Assigned(FKeyIndex) then
    FreeAndNil(FKeyIndex);

  inherited Destroy;
end;

end.

