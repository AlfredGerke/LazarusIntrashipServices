program FirstSteps;

{$mode delphi}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  ssl_openssl, // ssl-Plugin
  Interfaces, // this includes the LCL widgetset
  Forms,
  fs_main,
  IntrashipServicesConst,
  BusinessClientAPIRequestBuilder,
  IntrashipServicesTypes,
  IntrashipServicesUtils,
  lis_synapse_http_protocol,
  Remodel
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.

