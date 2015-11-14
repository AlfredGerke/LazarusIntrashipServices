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
    procedure CreateDD;
  public

  end;

var
  Main: TMain;

implementation

{$R *.lfm}

{ TMain }

procedure TMain.btnClearLogClick(Sender: TObject);
begin
  ClearLog;
end;

procedure TMain.btnCreateShipmentDDClick(Sender: TObject);
begin

end;

procedure TMain.Memo1Change(Sender: TObject);
begin
  CreateDD;
end;

procedure TMain.ClearLog;
begin
  edtLog.Clear;
end;

procedure TMain.CreateDD;
begin
  FPC_RegisterHTTP_Transport();
end;

end.

