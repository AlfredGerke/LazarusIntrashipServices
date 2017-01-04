program LazarusIntrashipServicesTest;

{$mode Delphi}{$H+}

uses
  Interfaces,
  Forms,
  GuiTestRunner,
  fpcunittestrunner,
  lis_testcase,
  register_lis_test,
  generics_collection_test;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

