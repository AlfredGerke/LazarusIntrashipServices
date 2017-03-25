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
  api.b2c.data.dhl_service,
  api.b2c.data.dhl_service_list,
  generics.convert,
  generics.collections.helper,
  common_generics_test, common.key_value_pair, 
  api.b2c.data.common.interfaces, api.b2c.data.common.credentials, 
api.b2c.data.common.proxy, api.b2c.data.common.url;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

