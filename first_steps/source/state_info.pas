unit state_info;

{$mode delphi}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, geschaeftskundenversand_api_2_2;

type

  { TStateInformation }

  TStateInformation = class(TForm)
    btnClose: TBitBtn;
    edtCode: TLabeledEdit;
    edtStateText: TLabeledEdit;
    lblStateMessage: TLabel;
    edtStateMessage: TMemo;
    pnlClient: TPanel;
    pnlBottom: TPanel;
  private
    FStateInformation: Statusinformation;

    procedure Clear;
    procedure Initialize;
  public

    procedure SetStateInformation(AStateInformation: Statusinformation);
    class procedure Open(AStateInformation: Statusinformation);
  end;

implementation

{$R *.lfm}

{ TStateInformation }

procedure TStateInformation.Clear;
begin
  edtCode.Clear;
  edtStateText.Clear;
  edtStateMessage.Clear;
end;

procedure TStateInformation.Initialize;
var
  len: integer;
  anz: integer;
begin
  Clear;

  if Assigned(FStateInformation) then
  begin
    edtCode.Text := IntToStr(FStateInformation.statusCode);
    edtStateText.Text := FStateInformation.statusText;
    len := FStateInformation.statusMessage.Length;
    for anz := 0 to len-1 do
      edtStateMessage.Lines.Add(FStateInformation.statusMessage.Item[anz]);
  end;
end;

procedure TStateInformation.SetStateInformation(
  AStateInformation: Statusinformation);
begin
  FStateInformation := AStateInformation;

  Initialize;
end;

class procedure TStateInformation.Open(AStateInformation: Statusinformation);
var
  dlg: TStateInformation;
begin
  dlg := TStateInformation.Create(nil);
  try
    with dlg do
    begin
      SetStateInformation(AStateInformation);
      case ShowModal of
        mrOK:;
        mrCancel:;
      end;
    end;
  finally
    if Assigned(dlg) then
      dlg.Release;
  end;
end;

end.

