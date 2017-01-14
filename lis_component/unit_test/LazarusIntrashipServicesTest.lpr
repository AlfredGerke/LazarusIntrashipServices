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
  api.common.common_record_list,
  api.b2c.data.common.types,
  api.b2c.data.service_record,
  api.b2c.data.service_record_list,
  api.common.utils,
  common_utils_test;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

