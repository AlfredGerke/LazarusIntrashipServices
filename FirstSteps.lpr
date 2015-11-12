program FirstSteps;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, fs_main, geschaeftskundenversand_api_1_0,
  geschaeftskundenversand_api_1_0_proxy, cis_base, is_base_de,
  IntrashipServicesConst,
BusinessClientAPIRequestBuilder, IntrashipServicesTypes
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.

