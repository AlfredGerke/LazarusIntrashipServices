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
  AssertEquals('ResultTypeString muss stUnknown sein', 'stUnknown', res_type_str);

  // 2.Fall stDayOfDelivery muss folgende String ergeben: stDayOfDelivery
  res_type_str := TTEnumToString<TServiceType>.Convert(stDayOfDelivery);
  AssertEquals('ResultTypeString muss stDayOfDelivery sein', 'stDayOfDelivery', res_type_str);

  // 3.Fall stDeliveryTimeframe muss folgende String ergeben: stDeliveryTimeframe
  res_type_str := TTEnumToString<TServiceType>.Convert(stDeliveryTimeframe);
  AssertEquals('ResultTypeString muss stDeliveryTimeframe sein', 'stDeliveryTimeframe', res_type_str);

  // 4.Fall stPreferredTime muss folgende String ergeben: stPreferredTime
  res_type_str := TTEnumToString<TServiceType>.Convert(stPreferredTime);
  AssertEquals('ResultTypeString muss stPreferredTime sein', 'stPreferredTime', res_type_str);
end;

{ TStringToTEnumTest }

procedure TStringToTEnumTest.Convert;
var
  res_type: TServiceType;
begin
  // 1. Fall String stUnknown muss TServiceType stUnkown ergeben
  // Strings werden aus separaten StringArray entnommen
  res_type := TStringToTEnum<TServiceType>.Convert('stUnknown', ServiceTypeStr);
  AssertEquals('ResultType muss stUnknown sein', 'stUnknown', ServiceTypeStr[res_type]);

  // 2. Fall String stDayOfDelivery muss TServiceType stDayOfDelivery ergeben
  // Strings werden aus separaten StringArray entnommen
  res_type := TStringToTEnum<TServiceType>.Convert('stDayOfDelivery', ServiceTypeStr);
  AssertEquals('ResultType muss stDayOfDelivery sein', 'stDayOfDelivery', ServiceTypeStr[res_type]);

  // 3. Fall String stDeliveryTimeframe muss TServiceType stDeliveryTimeframe ergeben
  // Strings werden aus separaten StringArray entnommen
  res_type := TStringToTEnum<TServiceType>.Convert('stDeliveryTimeframe', ServiceTypeStr);
  AssertEquals('ResultType muss stDeliveryTimeframe sein', 'stDeliveryTimeframe', ServiceTypeStr[res_type]);

  // 4. Fall String stPreferredTime muss TServiceType stPreferredTime ergeben
  // Strings werden aus separaten StringArray entnommen
  res_type := TStringToTEnum<TServiceType>.Convert('stPreferredTime', ServiceTypeStr);
  AssertEquals('ResultType muss stPreferredTime sein', 'stPreferredTime', ServiceTypeStr[res_type]);

  // 5. Fall String stNichtVorhanden muss TServiceType stUnknown ergeben
  // Strings werden aus separaten StringArray entnommen
  // stNichtVorhanden ist nicht Teil des separaten StringArray
  res_type := TStringToTEnum<TServiceType>.Convert('stNichtVorhanden', ServiceTypeStr);
  AssertEquals('ResultType muss stUnknown sein', 'stUnknown', ServiceTypeStr[stUnknown]);

  // 6. Fall String stUnknown muss TServiceType stUnknown ergeben
  // String wird über RTTI ermittelnt
  // kein Separates StringArray vorhanden
  res_type := TStringToTEnum<TServiceType>.Convert('stUnknown');
  AssertEquals('ResultType muss stPreferredTime sein', 'stUnknown', ServiceTypeStr[res_type]);

  // 7. Fall String stPreferredTime muss TServiceType stPreferredTime ergeben
  // String wird über RTTI ermittelnt
  // kein Separates StringArray vorhanden
  res_type := TStringToTEnum<TServiceType>.Convert('stPreferredTime');
  AssertEquals('ResultType muss stPreferredTime sein', 'stPreferredTime', ServiceTypeStr[res_type]);
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

