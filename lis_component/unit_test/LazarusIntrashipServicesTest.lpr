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
  common_record_list,
  common_types,
  service_record,
  service_record_list;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

