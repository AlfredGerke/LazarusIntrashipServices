unit api.b2c.data.dhl_service_list;

{$mode Delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  common.record_list,
  api.b2c.data.dhl_service,
  api.b2c.data.common.types;

type

  { TDHLServiceDataList }

  TDHLServiceDataList = class(TCommonRecordList<TDHLServiceData>)
  strict private type
    TGetServiceRecordRequest = record
      ServiceType: TServiceType;
    end;

    TGetServiceRecordResponse = record
      ServiceRecord: TDHLServiceData;
    end;
  strict private
    FCompareIndex: integer;
    FCompareServiceType: TServiceType;

    function CustomIndexOfFunc(constref AValue: TDHLServiceData): SizeInt;
  private
    FGetServiceRecordRequest: TGetServiceRecordRequest;
    FGetServiceRecordResponse: TGetServiceRecordResponse;

    procedure GetByServiceTypeProc(AIndex: integer;
                                   var AItem: TDHLServiceData;
                                   var ABreak: boolean);
  protected
    procedure CompareByServiceTypeProc(AIndex: integer;
                                       var AItem: TDHLServiceData;
                                       var ABreak: boolean); virtual;
    procedure ClearItem(AItem: TDHLServiceData); override;
  public
    constructor Create; reintroduce; overload;

    function GetByServiceType(AServiceType: TServiceType): TDHLServiceData;
  end;


implementation

{ TDHLServiceDataList }

procedure TDHLServiceDataList.GetByServiceTypeProc(AIndex: integer;
  var AItem: TDHLServiceData;
  var ABreak: boolean);
begin
  ABreak := (AItem.ServiceType = FGetServiceRecordRequest.ServiceType);
  if ABreak then
    FGetServiceRecordResponse.ServiceRecord := AItem;
end;

procedure TDHLServiceDataList.CompareByServiceTypeProc(AIndex: integer;
  var AItem: TDHLServiceData;
  var ABreak: boolean);
begin
  if (FCompareServiceType = AItem.ServiceType) then
  begin
    FCompareIndex:=AIndex;
    ABreak := True;
  end;
end;

procedure TDHLServiceDataList.ClearItem(AItem: TDHLServiceData);
begin
  AItem.Clear(True);
end;

function TDHLServiceDataList.CustomIndexOfFunc(
  constref AValue: TDHLServiceData): SizeInt;
begin
  FCompareIndex := -1;
  FCompareServiceType := AValue.ServiceType;

  ForEach(CompareByServiceTypeProc);

  Result := FCompareIndex;
end;

constructor TDHLServiceDataList.Create;
begin
  inherited;

  CustomIndexOf := CustomIndexOfFunc;
end;

function TDHLServiceDataList.GetByServiceType(
  AServiceType: TServiceType): TDHLServiceData;
begin
  FGetServiceRecordRequest.ServiceType:=AServiceType;
  FGetServiceRecordResponse.ServiceRecord.Clear;

  ForEach(GetByServiceTypeProc);

  Result := FGetServiceRecordResponse.ServiceRecord;
end;

end.

