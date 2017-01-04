unit service_record_list;

{$mode Delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  common_record_list,
  service_record;

type

  { TServiceRecordList }

  TServiceRecordList = class(TCommonRecordList<TServiceRecord>)
  protected
    procedure ClearItem(AItem: TServiceRecord); override;
  public
    procedure LoadForTest;
  end;


implementation

{ TServiceRecordList }

procedure TServiceRecordList.ClearItem(AItem: TServiceRecord);
begin
  AItem.Clear;
end;

procedure TServiceRecordList.LoadForTest;
begin
  Add(TServiceRecord.GetByDefault);
end;

end.

