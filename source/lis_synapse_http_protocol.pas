unit lis_synapse_http_protocol;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  synapse_http_protocol,
  IntrashipServicesTypes,
  httpsend,
  client_utils,
  service_intf;

type


  { THTTPTransportHack }

  THTTPTransportHack = class(TBaseTransport,ITransport)
  Private
    FConnection : THTTPSend;
  private
  protected
  Public
  Published
  End;


  { TLIS_HTTPTransport }

  TLIS_HTTPTransport = class(THTTPTransport)
  protected
    procedure DoSendAndReceive(ARequest,AResponse:TStream); override;
  end;

  { THTTPTransportHelper }

  THTTPTransportHelper = class helper for THTTPTransport
    function GetConnection: THTTPSend;
  end;

  { TLIS_HTTPTransportEvents }

  TLIS_HTTPTransportEvents = class
  private
    FOnBeforeExecute: TOnBeforeExecute;
    FOnAfterExecute: TOnAfterExecute;
    FOnSetHeaders: TOnSetHeaders;
    FOnSkipSendAndReceive: TOnSkipSendAndReceive;
  public
    class function GetInstance: TLIS_HTTPTransportEvents;

    procedure DoOnBeforeExecute(ARequest: TStream;
                                var AContinue: boolean);
    procedure DoOnSkipSendAndReceive(AResponse: TStream);
    procedure DoOnAfterExecute(AResponse: TStream);
    procedure DoOnSetHeaders(AConnection: THTTPSend);

    procedure SetEvents(AOnBeforeExecuteProc: TOnBeforeExecute;
                        AOnAfterExecuteProc: TOnAfterExecute;
                        AOnSetHeaders: TOnSetHeaders;
                        AOnSkipSendAndReceive: TOnSkipSendAndReceive);

    property OnBeforeExecute: TOnBeforeExecute
      read FOnBeforeExecute
      write FOnBeforeExecute;

    property OnAfterExecute: TOnAfterExecute
      read FOnAfterExecute
      write FOnAfterExecute;

    property OnSkipSendAndReceive: TOnSkipSendAndReceive
      read FOnSkipSendAndReceive
      write FOnSkipSendAndReceive;

    property OnSetHeaders: TOnSetHeaders
      read FOnSetHeaders
      write FOnSetHeaders;
  end;

procedure FreeLIS_HTTPTransportEventsSingletonInstance;

procedure SYNAPSE_RegisterLIS_HTTP_Transport(AOnBeforeExecuteProc: TOnBeforeExecute;
                                             AOnAfterExecuteProc: TOnAfterExecute;
                                             AOnSetHeaders: TOnSetHeaders;
                                             ASkipSendAndReceive: TOnSkipSendAndReceive);

implementation

uses
  base_service_intf,
  //service_intf,
  typinfo;

var
  lis_http_transport_events: TLIS_HTTPTransportEvents;

procedure FreeLIS_HTTPTransportEventsSingletonInstance;
begin
  if Assigned(lis_http_transport_events) then
    FreeAndNil(lis_http_transport_events);
end;

procedure SYNAPSE_RegisterLIS_HTTP_Transport(AOnBeforeExecuteProc: TOnBeforeExecute;
  AOnAfterExecuteProc: TOnAfterExecute;
  AOnSetHeaders: TOnSetHeaders;
  ASkipSendAndReceive: TOnSkipSendAndReceive);
begin
  TLIS_HTTPTransportEvents.GetInstance.SetEvents(AOnBeforeExecuteProc, AOnAfterExecuteProc,
    AOnSetHeaders, ASkipSendAndReceive);

  GetTransportRegistry().Register(sTRANSPORT_NAME,TSimpleItemFactory.Create(TLIS_HTTPTransport));
end;

{ THTTPTransportHelper }

function THTTPTransportHelper.GetConnection: THTTPSend;
begin
  Result := THTTPTransportHack(self).FConnection;
end;

{ TLIS_HTTPTransportEvents }

class function TLIS_HTTPTransportEvents.GetInstance: TLIS_HTTPTransportEvents;
begin
  if not Assigned(lis_http_transport_events) then
    lis_http_transport_events := TLIS_HTTPTransportEvents.Create;

  Result := lis_http_transport_events;
end;

procedure TLIS_HTTPTransportEvents.DoOnBeforeExecute(ARequest: TStream;
  var AContinue: boolean);
begin
  if Assigned(FOnBeforeExecute) then
    FOnBeforeExecute(ARequest, AContinue);
end;

procedure TLIS_HTTPTransportEvents.DoOnSkipSendAndReceive(AResponse: TStream);
begin
  if Assigned(FOnSkipSendAndReceive) then
    FOnSkipSendAndReceive(AResponse);
end;

procedure TLIS_HTTPTransportEvents.DoOnAfterExecute(AResponse: TStream);
begin
  if Assigned(FOnAfterExecute) then
    FOnAfterExecute(AResponse);
end;

procedure TLIS_HTTPTransportEvents.DoOnSetHeaders(AConnection: THTTPSend);
begin
  if Assigned(FOnSetHeaders) then
    FOnSetHeaders(AConnection);
end;

procedure TLIS_HTTPTransportEvents.SetEvents(
  AOnBeforeExecuteProc: TOnBeforeExecute;
  AOnAfterExecuteProc: TOnAfterExecute;
  AOnSetHeaders: TOnSetHeaders;
  AOnSkipSendAndReceive: TOnSkipSendAndReceive);
begin
  FOnBeforeExecute := AOnBeforeExecuteProc;
  FOnAfterExecute := AOnAfterExecuteProc;
  FOnSetHeaders := AOnSetHeaders;
  FOnSkipSendAndReceive := AOnSkipSendAndReceive;
end;

{ TLIS_HTTPTransport }

procedure TLIS_HTTPTransport.DoSendAndReceive(ARequest, AResponse: TStream);
var
  continue: boolean;
begin
  with TLIS_HTTPTransportEvents.GetInstance do
  begin
    continue := True;
    DoOnBeforeExecute(ARequest, continue);

    if not continue then
      DoOnSkipSendAndReceive(AResponse)
    else
    begin
      DoOnSetHeaders(GetConnection);

      inherited DoSendAndReceive(ARequest, AResponse);

      DoOnAfterExecute(AResponse);
    end;
  end;
end;

finalization
  FreeLIS_HTTPTransportEventsSingletonInstance;

end.

