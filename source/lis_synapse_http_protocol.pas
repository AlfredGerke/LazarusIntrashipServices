unit lis_synapse_http_protocol;

{$mode delphi}{$H+}

interface

uses
  Classes,
  SysUtils,
  synapse_http_protocol,
  IntrashipServicesTypes,
  httpsend;

type

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
  public
    class function GetInstance: TLIS_HTTPTransportEvents;

    procedure DoOnBeforeExecute(ARequest: TStream);
    procedure DoOnAfterExecute(AResponse: TStream);
    procedure DoOnSetHeaders(AConnection: THTTPSend);

    procedure SetEvents(AOnBeforeExecuteProc: TOnBeforeExecute;
                        AOnAfterExecuteProc: TOnAfterExecute;
                        AOnSetHeaders: TOnSetHeaders);

    property OnBeforeExecute: TOnBeforeExecute
      read FOnBeforeExecute
      write FOnBeforeExecute;

    property OnAfterExecute: TOnAfterExecute
      read FOnAfterExecute
      write FOnAfterExecute;

    property OnSetHeaders: TOnSetHeaders
      read FOnSetHeaders
      write FOnSetHeaders;
  end;

procedure FreeLIS_HTTPTransportEventsSingletonInstance;

procedure SYNAPSE_RegisterLIS_HTTP_Transport(AOnBeforeExecuteProc: TOnBeforeExecute;
                                             AOnAfterExecuteProc: TOnAfterExecute;
                                             AOnSetHeaders: TOnSetHeaders);

implementation

{ TLIS_HTTPTransportEvents }

uses
  base_service_intf,
  service_intf,
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
  AOnSetHeaders: TOnSetHeaders);
begin
  TLIS_HTTPTransportEvents.GetInstance.SetEvents(AOnBeforeExecuteProc, AOnAfterExecuteProc, AOnSetHeaders);

  GetTransportRegistry().Register(sTRANSPORT_NAME,TSimpleItemFactory.Create(TLIS_HTTPTransport));
end;

{ THTTPTransportHelper }

function THTTPTransportHelper.GetConnection: THTTPSend;
begin
  Result := nil;
end;

class function TLIS_HTTPTransportEvents.GetInstance: TLIS_HTTPTransportEvents;
begin
  if not Assigned(lis_http_transport_events) then
    lis_http_transport_events := TLIS_HTTPTransportEvents.Create;

  Result := lis_http_transport_events;
end;

procedure TLIS_HTTPTransportEvents.DoOnBeforeExecute(ARequest: TStream);
begin
  if Assigned(FOnBeforeExecute) then
    FOnBeforeExecute(ARequest);
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

procedure TLIS_HTTPTransportEvents.SetEvents(AOnBeforeExecuteProc: TOnBeforeExecute;
  AOnAfterExecuteProc: TOnAfterExecute;
  AOnSetHeaders: TOnSetHeaders);
begin
  FOnBeforeExecute := AOnBeforeExecuteProc;
  FOnAfterExecute := AOnAfterExecuteProc;
  FOnSetHeaders := AOnSetHeaders;
end;

{ TLIS_HTTPTransport }

procedure TLIS_HTTPTransport.DoSendAndReceive(ARequest, AResponse: TStream);
begin
  with TLIS_HTTPTransportEvents.GetInstance do
  begin
    DoOnBeforeExecute(ARequest);
    DoOnSetHeaders(GetConnection);

    inherited DoSendAndReceive(ARequest, AResponse);

    DoOnAfterExecute(AResponse);
  end;
end;

finalization
  FreeLIS_HTTPTransportEventsSingletonInstance;

end.

