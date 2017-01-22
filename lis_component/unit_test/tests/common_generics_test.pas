unit common_generics_test;

{$mode Delphi}{$H+}

interface

uses
  lis_testcase;

type

  { TStringToTEnumTest }

  TStringToTEnumTest= class(TLISTestCase)
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Convert;
  end;

  { TTEnumToStringTest }

  TTEnumToStringTest= class(TLISTestCase)
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Convert;
  end;


implementation

uses
  {$ifdef Debug}
    dbugintf,
  {$endif}
  api.b2c.data.common.types,
  generics.convert;

{ TTEnumToStringTest }

procedure TTEnumToStringTest.SetUp;
begin
  inherited SetUp;

  //
end;

procedure TTEnumToStringTest.TearDown;
begin
  //

  inherited TearDown;
end;

procedure TTEnumToStringTest.Convert;
var
  res_type_str: string;
begin
  // 1.Fall stUnkown muss folgende String ergeben: stUnkown
  res_type_str := TTEnumToString<TServiceType>.Convert(stUnknown);
  AssertEquals('1. Fall: ResultTypeString muss stUnknown sein', 'stUnknown', res_type_str);

  // 2.Fall stDayOfDelivery muss folgende String ergeben: stDayOfDelivery
  res_type_str := TTEnumToString<TServiceType>.Convert(stDayOfDelivery);
  AssertEquals('2. Fall: ResultTypeString muss stDayOfDelivery sein', 'stDayOfDelivery', res_type_str);

  // 3.Fall stDeliveryTimeframe muss folgende String ergeben: stDeliveryTimeframe
  res_type_str := TTEnumToString<TServiceType>.Convert(stDeliveryTimeframe);
  AssertEquals('3. Fall: ResultTypeString muss stDeliveryTimeframe sein', 'stDeliveryTimeframe', res_type_str);

  // 4.Fall stPreferredTime muss folgende String ergeben: stPreferredTime
  res_type_str := TTEnumToString<TServiceType>.Convert(stPreferredTime);
  AssertEquals('4. Fall: ResultTypeString muss stPreferredTime sein', 'stPreferredTime', res_type_str);
end;

{ TStringToTEnumTest }

procedure TStringToTEnumTest.Convert;
var
  res_type: TServiceType;
begin
  // 1. Fall String Unknown muss TServiceType stUnkown ergeben
  // Strings werden aus separaten StringArray entnommen
  res_type := TStringToTEnum<TServiceType>.Convert('Unknown', ServiceTypeStr);
  AssertEquals('1. Fall: ResultType muss stUnknown sein', 'Unknown', ServiceTypeStr[res_type]);

  // 2. Fall String DayOfDelivery muss TServiceType stDayOfDelivery ergeben
  // Strings werden aus separaten StringArray entnommen
  res_type := TStringToTEnum<TServiceType>.Convert('DayOfDelivery', ServiceTypeStr);
  AssertEquals('2. Fall: ResultType muss stDayOfDelivery sein', 'DayOfDelivery', ServiceTypeStr[res_type]);

  // 3. Fall String DeliveryTimeframe muss TServiceType stDeliveryTimeframe ergeben
  // Strings werden aus separaten StringArray entnommen
  res_type := TStringToTEnum<TServiceType>.Convert('DeliveryTimeframe', ServiceTypeStr);
  AssertEquals('3. Fall: ResultType muss stDeliveryTimeframe sein', 'DeliveryTimeframe', ServiceTypeStr[res_type]);

  // 4. Fall String PreferredTime muss TServiceType stPreferredTime ergeben
  // Strings werden aus separaten StringArray entnommen
  res_type := TStringToTEnum<TServiceType>.Convert('PreferredTime', ServiceTypeStr);
  AssertEquals('4. Fall: ResultType muss stPreferredTime sein', 'PreferredTime', ServiceTypeStr[res_type]);

  // 5. Fall String NichtVorhanden muss TServiceType stUnknown ergeben
  // Strings werden aus separaten StringArray entnommen
  // stNichtVorhanden ist nicht Teil des separaten StringArray
  res_type := TStringToTEnum<TServiceType>.Convert('NichtVorhanden', ServiceTypeStr);
  AssertEquals('5. Fall: ResultType muss stUnknown sein', 'Unknown', ServiceTypeStr[stUnknown]);

  // 6. Fall String stUnknown muss TServiceType stUnknown ergeben
  // String wird über RTTI ermittelnt
  // kein Separates StringArray vorhanden
  res_type := TStringToTEnum<TServiceType>.Convert('stUnknown');
  AssertEquals('6. Fall: ResultType muss stUnknown sein', 'Unknown', ServiceTypeStr[res_type]);

  // 7. Fall String stPreferredTime muss TServiceType stPreferredTime ergeben
  // String wird über RTTI ermittelnt
  // kein Separates StringArray vorhanden
  res_type := TStringToTEnum<TServiceType>.Convert('stPreferredTime');
  AssertEquals('7. Fall: ResultType muss stPreferredTime sein', 'PreferredTime', ServiceTypeStr[res_type]);
end;

procedure TStringToTEnumTest.SetUp;
begin
  inherited SetUp;

  //
end;

procedure TStringToTEnumTest.TearDown;
begin
  //

  inherited TearDown;
end;

end.

