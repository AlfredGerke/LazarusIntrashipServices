unit fs_main;

{$mode delphi}{$H+}

interface

uses
  Forms,
  ExtCtrls,
  Buttons,
  StdCtrls,
  lis_synapse_http_protocol,
  Classes,
  soap_formatter,
  httpsend,
  IntrashipServicesTypes,
  geschaeftskundenversand_api_2_2,
  geschaeftskundenversand_api_2_2_schema_cis_base;

type

  { TMain }

  TMain = class(TForm)
    btnClose: TBitBtn;
    btnDeleteShipmentDD: TSpeedButton;
    cbxSkipSendAndReceive: TCheckBox;
    edtLog: TMemo;
    edtShipmentNr: TLabeledEdit;
    lblShipmentNr: TBoundLabel;
    pnlOutline: TPanel;
    pnlBottom: TPanel;
    pnlClient: TPanel;
    btnClearLog: TSpeedButton;
    btnCreateShipmentDD: TSpeedButton;
    procedure btnClearLogClick(Sender: TObject);
    procedure btnCreateShipmentDDClick(Sender: TObject);
  private
    procedure DoMonitor(ALog: string);
    function GetCreateShipmentOrderReq(AConfigSettings: TConfigSettings;
                                       AOrderData: TOrderData): CreateShipmentOrderRequest;
    function GetAuthentificationHeader(ACredentials: TCredentials): Authentification;
    function GetSettings(var AConfig: TConfigSettings;
                         var ACredentials: TCredentials;
                         var AOrderData: TOrderData;
                         var AUrl: TUrlHandler): TErrorHandler;
    procedure ClearLog;
    procedure CreateShipmentOrderReq;

    procedure OnBeforeExecuteProc(ARequest: TStream;
                                  var AContinue: boolean);
    procedure OnSkipSendAndReceive(AResponse: TStream);
    procedure OnAfterExecuteProc(AResponse: TStream);
    procedure OnSetHeadersProc(AConnection: THTTPSend);
  public
  end;

var
  Main: TMain;

implementation

{$R *.lfm}

uses
  geschaeftskundenversand_api_2_2_proxy,
  BusinessClientAPIRequestBuilder,
  base_service_intf,
  SysUtils,
  Dialogs,
  remodel,
  dbugintf;

{ TMain }

procedure TMain.btnClearLogClick(Sender: TObject);
begin
  ClearLog;
end;

procedure TMain.btnCreateShipmentDDClick(Sender: TObject);
begin
  CreateShipmentOrderReq;
end;

procedure TMain.DoMonitor(ALog: string);
begin
  edtLog.Lines.Add(ALog);
end;

function TMain.GetCreateShipmentOrderReq(AConfigSettings: TConfigSettings;
  AOrderData: TOrderData): CreateShipmentOrderRequest;
var
  request_builder: TBusinessClientAPIRequestBuilder;
  req: CreateShipmentOrderRequest;
begin
  request_builder := TBusinessClientAPIRequestBuilder.Create;
  try
    request_builder.ConfigSettings := AConfigSettings;
    request_builder.OrderData := AOrderData;

    req := request_builder.GetCreateShipmentOrderReq(False);
  finally
    Result := req;
  end;
end;

function TMain.GetAuthentificationHeader(ACredentials: TCredentials): Authentification;
begin
  Result := Authentification.Create;
  Result.user := ACredentials.IntrashipUser.AsString;
  Result.signature := ACredentials.Signature.AsString;
end;

function TMain.GetSettings(var AConfig: TConfigSettings;
  var ACredentials: TCredentials;
  var AOrderData: TOrderData;
  var AUrl: TUrlHandler): TErrorHandler;
var
  err: TErrorHandler;
begin
  {%H-}err.Clear;
  try
    {%H-}AConfig.Clear;
    AConfig.IniFilename := '.\ini\settings.ini';
    err := AConfig.SetByIni;
    if err.Found then
      Exit;

    {%H-}ACredentials.Clear;
    ACredentials.IniFilename := '.\ini\settings.ini';
    err := ACredentials.SetByIni;
    if err.Found then
      Exit;

    {%H-}AOrderData.Clear;
    err := AOrderData.SetTestdata;
    if err.Found then
      Exit;

    {%H-}AUrl.Clear;
    AUrl.Credentials := ACredentials;
    AUrl.URL.SetByString('https://cig.dhl.de/services/sandbox/soap') ;
  finally
    Result := err;
  end;
end;

procedure TMain.ClearLog;
begin
  edtLog.Clear;
end;

procedure TMain.CreateShipmentOrderReq;
var
  proxy: GKVAPIServicePortType;
  auth: Authentification;
  credentials: TCredentials;
  config: TConfigSettings;
  order_data: TOrderData;
  req: CreateShipmentOrderRequest;
  resp: CreateShipmentOrderResponse;
  url: TUrlHandler;
  err: TErrorHandler;
  free_resp: boolean;
begin
  free_resp := True;
  try
    try
      err := GetSettings(config, credentials, order_data, url);

      if err.Found then
        MessageDlg(err.GetErrorMessage, mtError, [mbOK], 0)
      else
      begin
        SYNAPSE_RegisterLIS_HTTP_Transport(OnBeforeExecuteProc, OnAfterExecuteProc, OnSetHeadersProc,
          OnSkipSendAndReceive);

        // Wenn keine BasicHTTP-Authentication verwendet werden soll (Header) dann url.AsURL verwenden
        //proxy := wst_CreateInstance_GKVAPIServicePortType('SOAP:', 'HTTP:', url.AsURL);
        proxy := wst_CreateInstance_GKVAPIServicePortType('SOAP:', 'HTTP:', url.URL.AsString);

        auth := GetAuthentificationHeader(credentials);
        (proxy as ICallContext).AddHeader(auth, True);

        req := GetCreateShipmentOrderReq(config, order_data);

        resp := proxy.createShipmentOrder(req);
      end;
    except
      on E: Exception do
      begin
        edtLog.Lines.Add(E.Message);
        free_resp := False;
      end;
    end;
  finally
    if Assigned(req) then
      FreeAndNil(req);

    if (Assigned(resp) and free_resp) then
      FreeAndNil(resp);
  end;
end;

procedure TMain.OnBeforeExecuteProc(ARequest: TStream;
  var AContinue: boolean);
var
  list: TStrings;
begin
  with TRemodelRequest.GetInstance(self.DoMonitor) do
    RemodelByStream(ARequest);

  edtLog.Lines.add('// OnBeforeExecuteProc');

  list := TStringList.Create;
  try
    list.Clear;

    ARequest.Position := 0;
    list.LoadFromStream(ARequest);

    edtLog.lines.Add('-----------------------------');
    edtLog.lines.Add('//!<-- Beginnt hier: OnBeforeExecuteEvent');
    edtLog.lines.AddStrings(list);
    edtLog.lines.Add('// Endet hier: OnBeforeExecuteEvent -->');
    edtLog.lines.Add('-----------------------------');
  finally
    if Assigned(list) then
      FreeAndNil(list);

    AContinue := not cbxSkipSendAndReceive.Checked;
  end;
end;

procedure TMain.OnSkipSendAndReceive(AResponse: TStream);
var
  list: TStrings;
begin
  edtLog.Lines.add('// OnSkipSendAndReceive');
  list := TStringlist.Create;
  try
    AResponse.Position := 0;
    list.LoadFromStream(AResponse);

    edtLog.lines.Add('-----------------------------');
    edtLog.lines.Add('//!<-- Beginnt hier: OnSkipSendAndReceive');

    list.Add('<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">');
    list.Add('  <SOAP-ENV:Header xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"/>');
    list.Add('  <soap:Body>');
    list.Add('    <SOAP-ENV:Fault xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">');
    list.Add('      <faultcode xmlns="" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">soapenv:Client</faultcode>');
    list.Add(Format('      <faultstring xmlns="">%s</faultstring>', ['Vorzeitig abgebrochen!']));
    list.Add('      <detail xmlns=""/>');
    list.Add('    </SOAP-ENV:Fault>');
    list.Add('  </soap:Body>');
    list.Add('</soap:Envelope>');

    edtLog.lines.AddStrings(list);
    edtLog.lines.Add('// Endet hier: OnSkipSendAndReceive -->');
    edtLog.lines.Add('-----------------------------');

    AResponse.Position := 0;

    list.SaveToStream(AResponse);
  finally
    if Assigned(list) then
      FreeAndNil(list);
  end;
end;

procedure TMain.OnAfterExecuteProc(AResponse: TStream);
var
  list: TStrings;
begin
  edtLog.Lines.add('// OnAfterExecuteEvent');

  list := TStringList.Create;
  try
    list.Clear;
    AResponse.Position := 0;
    list.LoadFromStream(AResponse);

    edtLog.lines.Add('-----------------------------');
    edtLog.lines.Add('//!<-- Beginnt hier: OnAfterExecuteEvent');
    edtLog.lines.AddStrings(list);
    edtLog.lines.Add('// Endet hier: OnAfterExecuteEvent -->');
    edtLog.lines.Add('-----------------------------');
  finally
    if Assigned(list) then
      FreeAndNil(list);
  end;
end;

procedure TMain.OnSetHeadersProc(AConnection: THTTPSend);
var
  credentials: TCredentials;
  err: TErrorHandler;
begin
  edtLog.Lines.add('// OnSetHeadersProc');

  credentials.IniFilename := '.\ini\settings.ini';
  err := credentials.SetByIni;
  if err.Found then
    edtLog.Lines.Add(err.GetErrorMessage)
  else
  begin
    if not credentials.Username.IsEmpty then
      if Assigned(AConnection) then
      begin
        AConnection.Headers.Insert(0, credentials.AsBasicHTTPAuthenticationString);

        edtLog.lines.Add('-----------------------------');
        edtLog.lines.Add('//!<-- Beginnt hier: OnSetHeaders');
        edtLog.lines.AddStrings(AConnection.Headers);
        edtLog.lines.Add('// Endet hier: OnSetHeaders -->');
        edtLog.lines.Add('-----------------------------');
      end;
  end;
end;

end.

