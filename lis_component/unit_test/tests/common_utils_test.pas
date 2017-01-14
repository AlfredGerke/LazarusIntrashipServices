unit common_utils_test;

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
  api.common.utils;

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
  res_type_str := TTEnumToString<TServiceType>.Convert(stDayOfDelivery);
  AssertEquals('ResultTypeString muss stDayOfDelivery sein', 'stDayOfDelivery', res_type_str);
end;

{ TStringToTEnumTest }

procedure TStringToTEnumTest.Convert;
var
  res_type: TServiceType;
begin
  res_type := TStringToTEnum<TServiceType>.Convert('stUnknown', ServiceTypeStr);
  AssertEquals('ResultType muss stUnknown sein', 'stUnknown', ServiceTypeStr[res_type]);

  res_type := TStringToTEnum<TServiceType>.Convert('stDayOfDelivery', ServiceTypeStr);
  AssertEquals('ResultType muss stDayOfDelivery sein', 'stDayOfDelivery', ServiceTypeStr[res_type]);

  res_type := TStringToTEnum<TServiceType>.Convert('stDeliveryTimeframe', ServiceTypeStr);
  AssertEquals('ResultType muss stDeliveryTimeframe sein', 'stDeliveryTimeframe', ServiceTypeStr[res_type]);

  res_type := TStringToTEnum<TServiceType>.Convert('stPreferredTime', ServiceTypeStr);
  AssertEquals('ResultType muss stPreferredTime sein', 'stPreferredTime', ServiceTypeStr[res_type]);

  res_type := TStringToTEnum<TServiceType>.Convert('stNichtVorhanden', ServiceTypeStr);
  AssertEquals('ResultType muss stUnknown sein', 'stUnknown', ServiceTypeStr[stUnknown]);

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

