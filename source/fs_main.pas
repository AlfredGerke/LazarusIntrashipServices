unit fs_main;

{$mode delphi}{$H+}

interface

uses
  Forms,
  ExtCtrls,
  Buttons,
  StdCtrls,
  fpc_http_protocol, Classes;

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
  cis_base;

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
begin
  credentials.IniFilename := '.\ini\settings.ini';
  credentials.SetByIni;

  config.IniFilename := '.\ini\settings.ini';
  config.SetByIni;

  FPC_RegisterHTTP_Transport();

  proxy := wst_CreateInstance_ISWSServicePortType('SOAP:', 'HTTPS:', 'https://cig.dhl.de/services/sandbox/soap');

  auth := Authentification.Create;
  auth.user := credentials.IntrashipUser.AsString;
  auth.signature := credentials.Signature.AsString;
  auth._type := 0;

  (proxy as ICallContext).AddHeader(auth, True);
end;

end.

