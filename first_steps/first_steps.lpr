program first_steps;

{$mode delphi}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  ssl_openssl, // ssl-Plugin
  Interfaces, // this includes the LCL widgetset
  Forms,
  fs_main,
  intraship_services_const,
  business_customersapi_request_builder,
  intraship_services_types,
  intraship_services_utils,
  lis_synapse_http_protocol,
  validate_request, state_info
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.

