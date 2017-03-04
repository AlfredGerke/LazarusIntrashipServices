unit generics_collection_test;

{$mode Delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  lis_testcase,
  api.b2c.data.dhl_service,
  api.b2c.data.dhl_service_list;

type

  { TDHLServiceDataListWrapper }

  TDHLServiceDataListWrapper = class(TDHLServiceDataList)
  public
    procedure AlterServiceTypeProc(AIndex: integer;
                                   var AItem: TDHLServiceData;
                                   var ABreak: boolean);

    procedure CheckByDebugServerProc(AIndex: integer;
                                     var AItem: TDHLServiceData;
                                     var ABreak: boolean);

    procedure LoadForTest(ACount: integer);
  end;

  { TDHLServiceDataListTest }

  TDHLServiceDataListTest= class(TLISTestCase)
  private
    FServiceRecordList: TDHLServiceDataListWrapper;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Count;
    procedure Duplicates;
    procedure ForEach;
    procedure Details;
  end;

implementation

uses
  {$ifdef Debug}
    dbugintf,
  {$endif}
  api.b2c.data.common.types,
  generics.convert,
  common.key_value_pair;

{ TDHLServiceDataListWrapper }

procedure TDHLServiceDataListWrapper.AlterServiceTypeProc(AIndex: integer;
  var AItem: TDHLServiceData;
  var ABreak: boolean);
begin
  if (AItem.ServiceType = stUnknown) then
    AItem.ServiceType := stDeliveryTimeframe;

  if (AItem.ServiceType = stDayOfDelivery) then
    AItem.ServiceType := stPreferredTime;
end;

procedure TDHLServiceDataListWrapper.CheckByDebugServerProc(AIndex: integer;
  var AItem: TDHLServiceData;
  var ABreak: boolean);
begin
  {$ifdef Debug}
    SendDebugFmt('ItemIndex: %d - ServiceType: %d', [AIndex, Integer(AItem.ServiceType)]);
  {$endif}
end;

procedure TDHLServiceDataListWrapper.LoadForTest(ACount: integer);
var
  anz: integer;
begin
  for anz := 0 to ACount-1 do
    Add(TDHLServiceData.GetByDefault);
end;

{ TDHLServiceDataListTest }

procedure TDHLServiceDataListTest.SetUp;
begin
  inherited SetUp;

  FServiceRecordList := TDHLServiceDataListWrapper.Create;
end;

procedure TDHLServiceDataListTest.TearDown;
begin
  if Assigned(FServiceRecordList) then
    FreeAndNil(FServiceRecordList);

  inherited TearDown;
end;

procedure TDHLServiceDataListTest.Count;
begin
  //1. Fall: Liste ist leer
  AssertEquals('Anz. Items sollte 0 sein', 0, FServiceRecordList.Count);

  //2. Fall: Liste besitzt 3 Items
  FServiceRecordList.LoadForTest(3);
  AssertEquals('Anz. Items sollte 3 sein', 3, FServiceRecordList.Count);

  //3. Fall: Liste besitzt 4 Items
  FServiceRecordList.LoadForTest(1);
  AssertEquals('Anz. Items sollte 4 sein', 4, FServiceRecordList.Count);

  //4. Fall: Liste besitzt 1 Item
  FServiceRecordList.Delete(1);
  FServiceRecordList.Delete(1);
  FServiceRecordList.Delete(1);
  AssertEquals('Anz. Items sollte 1 sein', 1, FServiceRecordList.Count);

  //5. Fall: Liste ist leer
  FServiceRecordList.Clear;
  AssertEquals('Anz. Items sollte 0 sein', 0, FServiceRecordList.Count);
end;

procedure TDHLServiceDataListTest.Duplicates;
var
  service_record: TDHLServiceData;
begin
  //1. Fall: Liste ist leer
  AssertEquals('Anz. Items sollte 0 sein', 0, FServiceRecordList.Count);

  //2. Fall: Liste besitzt 3 Items
  FServiceRecordList.LoadForTest(3);
  AssertEquals('Anz. Items sollte 3 sein', 3, FServiceRecordList.Count);

  //3. Fall: Liste enthält Duplicates (dupIgnore -> keine Exeption)
  FServiceRecordList.Duplicates := dupIgnore;
  FServiceRecordList.LoadForTest(1);
  AssertEquals('Anz. Items sollte 3 sein', 3, FServiceRecordList.Count);

  //4. Fall: Liste enthält Duplicates (dupError -> Exception)
  FServiceRecordList.Duplicates := dupError;
  try
    FServiceRecordList.LoadForTest(1);
  except
    on E: Exception do
      AssertEquals('Anz. Items sollte 3 sein', 3, FServiceRecordList.Count);
  end;

  //5. Fall: Liste ist leer
  FServiceRecordList.Clear;
  AssertEquals('Anz. Items sollte 0 sein', 0, FServiceRecordList.Count);

  //6. Fall: Liste besitzt 1 Item
  service_record := TDHLServiceData.GetByDefault;
  service_record.ServiceType := stDayOfDelivery;
  try
    FServiceRecordList.Add(service_record);
  except
    on E: Exception do
      AssertEquals('Anz. Items sollte 1 sein', 1, FServiceRecordList.Count);
  end;

  //7. Fall: Liste besitzt 2 Item
  service_record := TDHLServiceData.GetByDefault;
  service_record.ServiceType := stDeliveryTimeframe;
  try
    FServiceRecordList.Add(service_record);
  except
    on E: Exception do
      AssertEquals('Anz. Items sollte 2 sein', 2, FServiceRecordList.Count);
  end;
end;

procedure TDHLServiceDataListTest.ForEach;
var
  service_record: TDHLServiceData;
begin
  //1. Fall: Liste ist leer
  FServiceRecordList.Clear;
  FServiceRecordList.Duplicates := dupIgnore;
  AssertEquals('Anz. Items sollte 0 sein', 0, FServiceRecordList.Count);

  //2. Fall: Liste besitzt 2 Items (Infos im DebugServer)
  service_record := TDHLServiceData.GetByDefault;
  service_record.ServiceType := stUnknown;
  FServiceRecordList.Add(service_record);

  service_record := TDHLServiceData.GetByDefault;
  service_record.ServiceType := stDayOfDelivery;
  FServiceRecordList.Add(service_record);

  with FServiceRecordList do
    ForEach(CheckByDebugServerProc);

  //3. Fall: Vorhandene Einträge werden geändert (Infos im DebugServer)
  with FServiceRecordList do
  begin
    ForEach(AlterServiceTypeProc);
    ForEach(CheckByDebugServerProc);
  end;
end;

procedure TDHLServiceDataListTest.Details;
var
  service_record: TDHLServiceData;
begin
  //1. Fall: Liste ist leer
  FServiceRecordList.Clear;
  FServiceRecordList.Duplicates := dupError;
  AssertEquals('Anz. Items sollte 0 sein', 0, FServiceRecordList.Count);

  service_record := TDHLServiceData.GetByDefault;
  service_record.ServiceType := stCashOnDelivery;
  service_record.Details.Add(TKeyValuePair.GetByDefault('active', 1));
  service_record.Details.Add(TKeyValuePair.GetByDefault('codAmount', 23.25));
  FServiceRecordList.Add(service_record);

  service_record := TDHLServiceData.GetByDefault;
  service_record.ServiceType := stVisualCheckOfAge;
  service_record.Details.Add(TKeyValuePair.GetByDefault('active', 1));
  service_record.Details.Add(TKeyValuePair.GetByDefault('type', 'A16'));
  FServiceRecordList.Add(service_record);

  AssertEquals('Anz. Services sollte 2 sein', 2, FServiceRecordList.Count);

  service_record.Clear;
  service_record := FServiceRecordList.GetByServiceType(stCashOnDelivery);

  AssertEquals('Wert "active" sollte 1 sein', 1, service_record.Details.GetValue('active'));
  AssertEquals('Wert "codAmount" sollte 23.25 sein', 23.25, service_record.Details.GetValue('codAmount'));

  service_record.Clear;
  service_record := FServiceRecordList.GetByServiceType(stVisualCheckOfAge);

  AssertEquals('Wert "active" sollte 1 sein', 1, service_record.Details.GetValue('active'));
  AssertEquals('Wert "type" sollte A16 sein', 'A16', service_record.Details.GetValue('type'));
end;

end.

