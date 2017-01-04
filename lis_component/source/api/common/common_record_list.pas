unit common_record_list;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  Generics.Collections;

type

  { TCommonRecordList }

  TCommonRecordList<T> = class(TList<T>)
  protected
    procedure ClearItem(AItem: T); virtual; abstract;
  public
    procedure Clear;
  end;

implementation

{ TCommonRecordList }

procedure TCommonRecordList<T>.Clear;
begin
  { TODO -oAGE -cCode vervollständigen : ClearItem einführen; in dem Kontext über LoopThrough bzw. ForEach - Methode nachdenken }

  inherited Clear;
end;

end.

