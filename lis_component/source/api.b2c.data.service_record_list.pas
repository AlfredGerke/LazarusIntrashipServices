unit api.b2c.data.service_record_list;

{$mode Delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  api.common.common_record_list,
  api.b2c.data.service_record;

type

  { TServiceRecordList }

  TServiceRecordList = class(TCommonRecordList<TServiceRecord>)
  protected
    procedure ClearItem(AItem: TServiceRecord); override;
  end;


implementation

{ TServiceRecordList }

procedure TServiceRecordList.ClearItem(AItem: TServiceRecord);
begin
  AItem.Clear;
end;

end.

