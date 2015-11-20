program FirstSteps;

{$mode delphi}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  fs_main,
  geschaeftskundenversand_api_1_0,
  geschaeftskundenversand_api_1_0_proxy,
  is_base_de,
  cis_base,
  IntrashipServicesConst,
  BusinessClientAPIRequestBuilder,
  IntrashipServicesTypes,
  IntrashipServicesUtils,
  lis_synapse_http_protocol,
  ssl_openssl
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.

