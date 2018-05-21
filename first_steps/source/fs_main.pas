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
  intraship_services_types,
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
    procedure btnDeleteShipmentDDClick(Sender: TObject);
  private
    procedure DoMonitor(ALog: string);
    function GetCreateShipmentOrderReq(AConfigSettings: TConfigSettings;
                                       AOrderData: TOrderData): CreateShipmentOrderRequest;
    function GetDeleteShipmentOrderReq(AConfigSettings: TConfigSettings;
                                       AShipmentNo: string): DeleteShipmentOrderRequest;
    function GetAuthentificationHeader(ACredentials: TCredentials): Authentification;
    function GetSettings(var AConfig: TConfigSettings;
                         var ACredentials: TCredentials;
                         var AOrderData: TOrderData;
                         var AUrl: TUrlHandler): TErrorHandler;
    procedure ClearLog;
    procedure CreateShipmentOrder;
    procedure DeleteShipmentOrder;
    function GetShipmentNoByResponse(ACreationState: CreateShipmentOrderResponse_CreationStateArray): boolean;
    function GetDeleteShipmentNoByResponse(ADeletionState: DeleteShipmentOrderResponse_DeletionStateArray): boolean;
    procedure HandleStateInformation(AStateInformation: Statusinformation);

    procedure OnBeforeExecuteProc(ARequest: TStream;
                                  var AContinue: boolean);
    procedure OnSkipSendAndReceive(AResponse: TStream);
    procedure OnAfterExecuteProc(AResponse: TStream);
    procedure OnSetHeadersProc(AConnection: THTTPSend);
    procedure OnGetTimeouts(var AConnectTimeout: integer;
                            var AReadTimeout: integer);
  public
  end;

var
  Main: TMain;

implementation

{$R *.lfm}

uses
  geschaeftskundenversand_api_2_2_proxy,
  business_customersapi_request_builder,
  base_service_intf,
  SysUtils,
  Dialogs,
  validate_request,
  dbugintf,
  state_info;

{ TMain }

procedure TMain.btnClearLogClick(Sender: TObject);
begin
  ClearLog;
end;

procedure TMain.btnCreateShipmentDDClick(Sender: TObject);
begin
  CreateShipmentOrder;
end;

procedure TMain.btnDeleteShipmentDDClick(Sender: TObject);
begin
  DeleteShipmentOrder;
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

function TMain.GetDeleteShipmentOrderReq(AConfigSettings: TConfigSettings;
  AShipmentNo: string): DeleteShipmentOrderRequest;
var
  request_builder: TBusinessClientAPIRequestBuilder;
  req: DeleteShipmentOrderRequest;
begin
  request_builder := TBusinessClientAPIRequestBuilder.Create;
  try
    request_builder.ConfigSettings := AConfigSettings;

    req := request_builder.GetDeleteShipmentOrderReq(AShipmentNo);
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
    AConfig.IniFilename := '.\settings.ini';
    err := AConfig.SetByIni;
    if err.Found then
      Exit;

    {%H-}ACredentials.Clear;
    ACredentials.IniFilename := '.\settings.ini';
    err := ACredentials.SetByIni;
    if err.Found then
      Exit;

    {%H-}AOrderData.Clear;
    err := AOrderData.SetTestdata;
    if err.Found then
      Exit;

    {%H-}AUrl.Clear;
    AUrl.Credentials := ACredentials;
    AUrl.Configuration := AConfig;
    AUrl.InitURL;

  finally
    Result := err;
  end;
end;

procedure TMain.ClearLog;
begin
  edtLog.Clear;
end;

procedure TMain.CreateShipmentOrder;
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
          OnSkipSendAndReceive, OnGetTimeouts);

        // Wenn keine BasicHTTP-Authentication verwendet werden soll (s. OnSetHeadersProc) dann
        // url.AsURL verwenden
        //proxy := wst_CreateInstance_GKVAPIServicePortType('SOAP:', 'HTTP:', url.AsURL);
        proxy := wst_CreateInstance_GKVAPIServicePortType('SOAP:', 'HTTP:', url.URL.AsString);

        auth := GetAuthentificationHeader(credentials);
        (proxy as ICallContext).AddHeader(auth, True);

        req := GetCreateShipmentOrderReq(config, order_data);

        resp := proxy.createShipmentOrder(req);

        if not cbxSkipSendAndReceive.Checked then
          if not Assigned(resp) then
            raise Exception.Create('Fehler im Response! (s. Log)')
          else
            if Assigned(resp.CreationState) then
            begin
              if not GetShipmentNoByResponse(resp.CreationState) then
                HandleStateInformation(resp.Status);
            end
            else
              HandleStateInformation(resp.Status);
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

procedure TMain.DeleteShipmentOrder;
var
  proxy: GKVAPIServicePortType;
  auth: Authentification;
  credentials: TCredentials;
  config: TConfigSettings;
  order_data: TOrderData;
  req: DeleteShipmentOrderRequest;
  resp: DeleteShipmentOrderResponse;
  url: TUrlHandler;
  err: TErrorHandler;
  free_resp: boolean;
  shipment_no: string;
begin
  free_resp := True;

  shipment_no := edtShipmentNr.text;
  if Trim(shipment_no) = EmptyStr then
    MessageDlg('Keine Sendnungsnummer vorhanden!', mtInformation, [mbOK], 0)
  else
  try
    try
      err := GetSettings(config, credentials, order_data, url);

      if err.Found then
        MessageDlg(err.GetErrorMessage, mtError, [mbOK], 0)
      else
      begin
        SYNAPSE_RegisterLIS_HTTP_Transport(OnBeforeExecuteProc, OnAfterExecuteProc, OnSetHeadersProc,
          OnSkipSendAndReceive, OnGetTimeouts);

        // Wenn keine BasicHTTP-Authentication verwendet werden soll (s. OnSetHeadersProc) dann
        // url.AsURL verwenden
        //proxy := wst_CreateInstance_GKVAPIServicePortType('SOAP:', 'HTTP:', url.AsURL);
        proxy := wst_CreateInstance_GKVAPIServicePortType('SOAP:', 'HTTP:', url.URL.AsString);

        auth := GetAuthentificationHeader(credentials);
        (proxy as ICallContext).AddHeader(auth, True);

        req := GetDeleteShipmentOrderReq(config, edtShipmentNr.Text);

        resp := proxy.deleteShipmentOrder(req);

        if not cbxSkipSendAndReceive.Checked then
          if not Assigned(resp) then
            raise Exception.Create('Fehler im Response! (s. Log)')
          else
            if Assigned(resp.DeletionState) then
            begin
              if not GetDeleteShipmentNoByResponse(resp.DeletionState) then
                HandleStateInformation(resp.Status);
            end
            else
              HandleStateInformation(resp.Status);
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

function TMain.GetShipmentNoByResponse(
  ACreationState: CreateShipmentOrderResponse_CreationStateArray): boolean;
var
  cre_state: CreationState;
  len: integer;
begin
  len := ACreationState.Length;

  Result := (len > 0);
  if Result then
  begin
    cre_state := ACreationState.Item[0];
    edtShipmentNr.text := String(cre_state.LabelData.shipmentNumber);

    SendDebug(Format('Sendungsnummer: %s', [cre_state.LabelData.shipmentNumber]));
    SendDebug(Format('Labelurl: %s', [cre_state.LabelData.labelUrl]));

    HandleStateInformation(cre_state.LabelData.Status);
  end;
end;

function TMain.GetDeleteShipmentNoByResponse(
  ADeletionState: DeleteShipmentOrderResponse_DeletionStateArray): boolean;
var
  del_state: DeletionState;
  len: integer;
begin
  len := ADeletionState.Length;

  Result := (len > 0);
  if Result then
  begin
    del_state := ADeletionState.Item[0];

    SendDebug(Format('Sendungsnummer: %s', [del_state.shipmentNumber]));

    HandleStateInformation(del_state.Status);
  end;
end;

procedure TMain.HandleStateInformation(AStateInformation: Statusinformation);
begin
  if Assigned(AStateInformation) then
    TStateInformation.Open(AStateInformation)
  else
    raise Exception.Create('Fehler im Response! (s. Log)');
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
  credentials.Clear;
  edtLog.Lines.add('// OnSetHeadersProc');

  credentials.IniFilename := '.\settings.ini';
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

procedure TMain.OnGetTimeouts(var AConnectTimeout: integer;
  var AReadTimeout: integer);
var
  config: TConfigSettings;
  err: TErrorHandler;
begin
  config.Clear;
  edtLog.Lines.add('// OnGetTimeouts');

  config.IniFilename := '.\settings.ini';
  err := config.SetByIni;
  if err.Found then
  begin
    AConnectTimeout := 10000;
    AReadTimeout := 1000;

    edtLog.Lines.Add(err.GetErrorMessage);
  end
  else
  begin
    AConnectTimeout := config.ConnectTimeout.AsInteger;
    AReadTimeout := config.ReceiveTimeout.AsInteger;
  end;

  edtLog.lines.Add('-----------------------------');
  edtLog.lines.Add('//!<-- Beginnt hier: OnGetTimeouts');

  edtLog.Lines.add(Format('ConnectTimeout: %d', [AConnectTimeout]));
  edtLog.Lines.add(Format('ReadTimeout: %d', [AReadTimeout]));

  edtLog.lines.Add('// Endet hier: OnGetTimeouts -->');
  edtLog.lines.Add('-----------------------------');

end;

end.

