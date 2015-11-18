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
  httpsend;

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
  IntrashipServicesTypes,
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
      config.IniFilename := '.\ini\settings.ini';
      err := config.SetByIni;
      if err.Found then
      begin
        MessageDlg(err.GetErrorMessage, mtError, [mbOK], 0);
        Exit;
      end;

      err := order_data.SetTestdata;
      if err.Found then
      begin
        MessageDlg(err.GetErrorMessage, mtError, [mbOK], 0);
        Exit;
      end;

      url.Credentials := Credentials;
      url.URL.SetByString('https://cig.dhl.de/services/sandbox/soap') ;

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
    if Assigned(proxy) then
      FreeAndNil(proxy);

    if Assigned(auth) then
      FreeAndNil(auth);

    if Assigned(request_builder) then
      FreeAndNil(request_builder);
  end;
end;

procedure TMain.OnBeforeExecuteProc(ARequest: TStream);
begin
  edtLog.Lines.add('// OnBeforeExecute');
  edtLog.Lines.add('//!<--');


  edtLog.Lines.add('//-->');
end;

procedure TMain.OnAfterExecuteProc(AResponse: TStream);
begin
  edtLog.Lines.add('// OnAfterExecute');
  edtLog.Lines.add('//!<--');


  edtLog.Lines.add('//-->');
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
    if not credentials.Username.IsEmpty then
      AConnection.Headers.Insert(0, credentials.AsBasicHTTPAuthenticationString);
end;

end.

