unit api.b2c.data.service_record_list;

{$mode Delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  common.record_list,
  api.b2c.data.service_record,
  api.b2c.data.common.types;

type

  { TServiceRecordList }

  TServiceRecordList = class(TCommonRecordList<TServiceRecord>)
  strict private type
    TGetServiceRecordRequest = record
      ServiceType: TServiceType;
    end;

    TGetServiceRecordResponse = record
      ServiceRecord: TServiceRecord;
    end;
  private
    FGetServiceRecordRequest: TGetServiceRecordRequest;
    FGetServiceRecordResponse: TGetServiceRecordResponse;

    procedure GetByServiceTypeProc(AIndex: integer;
                                   var AItem: TServiceRecord;
                                   var ABreak: boolean);
  protected
    procedure ClearItem(AItem: TServiceRecord); override;
  public
    function GetByServiceType(AServiceType: TServiceType): TServiceRecord;
  end;


implementation

{ TServiceRecordList }

procedure TServiceRecordList.GetByServiceTypeProc(AIndex: integer;
  var AItem: TServiceRecord;
  var ABreak: boolean);
begin
  ABreak := (AItem.ServiceType = FGetServiceRecordRequest.ServiceType);
  if ABreak then
    FGetServiceRecordResponse.ServiceRecord := AItem;
end;

procedure TServiceRecordList.ClearItem(AItem: TServiceRecord);
begin
  AItem.Clear(True);
end;

function TServiceRecordList.GetByServiceType(
  AServiceType: TServiceType): TServiceRecord;
begin
  FGetServiceRecordRequest.ServiceType:=AServiceType;
  FGetServiceRecordResponse.ServiceRecord.Clear;

  ForEach(GetByServiceTypeProc);

  Result := FGetServiceRecordResponse.ServiceRecord;
end;

end.

