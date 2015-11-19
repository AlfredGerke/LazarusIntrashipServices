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
  { TODO -oAlfred Gerke -cFragen zum SOAP-Handling : Immer notwendig und wenn ja wo am besten einbinden? }
  soap_formatter,
  httpsend,
  IntrashipServicesTypes;

type

  { TMain }

  TMain = class(TForm)
    btnClose: TBitBtn;
    btnDeleteShipmentDD: TSpeedButton;
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
    procedure Memo1Change(Sender: TObject);
  private
    function GetSettings(var AConfig: TConfigSettings;
                         var ACredentials: TCredentials;
                         var AOrderData: TOrderData;
                         var AUrl: TUrlHandler): TErrorHandler;
    procedure ClearLog;
    procedure CreateShipmentDD;

    procedure OnBeforeExecuteProc(ARequest: TStream);
    procedure OnAfterExecuteProc(AResponse: TStream);
    procedure OnSetHeadersProc(AConnection: THTTPSend);
  public
  end;

var
  Main: TMain;

implementation

{$R *.lfm}

uses
  geschaeftskundenversand_api_1_0_proxy,
  geschaeftskundenversand_api_1_0,
  BusinessClientAPIRequestBuilder,
  base_service_intf,
  cis_base,
  is_base_de,
  SysUtils,
  Dialogs;

{ TMain }

procedure TMain.btnClearLogClick(Sender: TObject);
begin
  ClearLog;
end;

procedure TMain.btnCreateShipmentDDClick(Sender: TObject);
begin
  CreateShipmentDD;
end;

procedure TMain.Memo1Change(Sender: TObject);
begin
  CreateShipmentDD;
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

procedure TMain.CreateShipmentDD;
var
  proxy: ISWSServicePortType;
  auth: Authentification;
  credentials: TCredentials;
  config: TConfigSettings;
  order_data: TOrderData;
  request_builder: TBusinessClientAPIRequestBuilder;
  req: CreateShipmentDDRequest;
  resp: CreateShipmentResponse;
  url: TUrlHandler;
  err: TErrorHandler;
begin
  try
    try
      err := GetSettings(config, credentials, order_data, url);
      if err.Found then
      begin
        MessageDlg(err.GetErrorMessage, mtError, [mbOK], 0);
        Exit;
      end;

      SYNAPSE_RegisterLIS_HTTP_Transport(OnBeforeExecuteProc, OnAfterExecuteProc, OnSetHeadersProc);

      proxy := wst_CreateInstance_ISWSServicePortType('SOAP:', 'HTTP:', url.URL.AsString);

      auth := Authentification.Create;
      auth.user := credentials.IntrashipUser.AsString;
      auth.signature := credentials.Signature.AsString;
      auth._type := 0;

      (proxy as ICallContext).AddHeader(auth, True);

      request_builder := TBusinessClientAPIRequestBuilder.Create;
      request_builder.ConfigSettings := config;
      request_builder.OrderData := order_data;

      req := request_builder.GetCreateShipmentDDReq(False);

      resp := proxy.createShipmentDD(req);
    except
      on E: Exception do
        edtLog.Lines.Add(E.Message);
    end;
  finally
    if Assigned(request_builder) then
      FreeAndNil(request_builder);

    if Assigned(proxy) then
      FreeAndNil(proxy);

    if Assigned(auth) then
      FreeAndNil(auth);
  end;
end;

procedure TMain.OnBeforeExecuteProc(ARequest: TStream);
var
  list: TStrings;
begin
  list := TStringList.Create;
  try
    list.Clear;

    ARequest.Position := 0;
    list.LoadFromStream(ARequest);

    edtLog.lines.Add('-----------------------------');
    edtLog.lines.Add('//!<-- Beginnt hier: OnBeforeExecuteEvent');
    edtLog.lines.AddStrings(list);
    edtLog.lines.Add('//Endet hier: OnBeforeExecuteEvent -->');
    edtLog.lines.Add('-----------------------------');
  finally
    if Assigned(list) then
      FreeAndNil(list);
  end;
end;

procedure TMain.OnAfterExecuteProc(AResponse: TStream);
var
  list: TStrings;
begin
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

