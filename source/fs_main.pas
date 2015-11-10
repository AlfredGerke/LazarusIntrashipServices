unit fs_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls;

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
  private
    procedure ClearLog;
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

procedure TMain.ClearLog;
begin
  edtLog.Clear;
end;

end.

