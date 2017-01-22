program LazarusIntrashipServicesTest;

{$mode Delphi}{$H+}

uses
  Interfaces,
  Forms,
  GuiTestRunner,
  fpcunittestrunner,
  lis_testcase,
  register_lis_test,
  generics_collection_test,
  common.record_list,
  api.b2c.data.common.types,
  api.b2c.data.service_record,
  api.b2c.data.service_record_list,
  generics.convert,
  generics.collections.helper,
  common_generics_test;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

