unit api.common.common_record_list;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  Generics.Collections;

type

  { TCommonRecordList }

  TCommonRecordList<T> = class(TList<T>)
  public type
    TOnForEach = procedure (AIndex: integer;
                            var AItem: T;
                            var ABreak: boolean) of object;
  private
    FDuplicates: TDuplicates;

    procedure ClearItemProc(AIndex: integer;
                            var AItem: T;
                            var ABreak: boolean);
  protected
    procedure ClearItem(AItem: T); virtual; abstract;
    function GetIsAvailable: boolean;
  public
    constructor Create; reintroduce; overload;
    destructor Destroy; override;

    function ForEach(AProc: TOnForEach): integer;

    procedure Clear;
    function Add(const Value: T): integer;

    property IsAvailable: boolean
      read GetIsAvailable;

    property Duplicates: TDuplicates
      read FDuplicates
      write FDuplicates;
  end;

implementation

{ TCommonRecordList }

destructor TCommonRecordList<T>.Destroy;
begin
  Clear;

  inherited;
end;

constructor TCommonRecordList<T>.Create;
begin
  inherited;

  Duplicates := dupAccept;
end;

function TCommonRecordList<T>.Add(const Value: T): integer;
begin
  Result := -1;

  if (Duplicates in [dupIgnore, dupError]) then
    if (IndexOf(Value) > -1) then
      if (Duplicates = dupError) then
        raise Exception.Create('Doppelter Eintrag nicht erlaubt!')
      else
        Exit;

  Result := inherited Add(Value);
end;

function TCommonRecordList<T>.GetIsAvailable: boolean;
begin
  Result := (Count > 0);
end;

procedure TCommonRecordList<T>.ClearItemProc(AIndex: integer;
  var AItem: T;
  var ABreak: boolean);
begin
  ClearItem(AItem);
end;

procedure TCommonRecordList<T>.Clear;
begin
  ForEach(ClearItemProc);

  inherited;
end;

function TCommonRecordList<T>.ForEach(AProc: TOnForEach): integer;
var
  anz: integer;
  do_break: boolean;
  item: T;
begin
  Result := 0;

  if (Assigned(AProc) and IsAvailable) then
    for anz := 0 to Count-1 do
    begin
      do_break := false;

      item := Items[anz];

      if Assigned(AProc) then
        AProc(anz, item, do_break);

      Items[anz] := item;

      if do_break then
        Break;

      Result := Result + 1;
    end;
end;

end.

