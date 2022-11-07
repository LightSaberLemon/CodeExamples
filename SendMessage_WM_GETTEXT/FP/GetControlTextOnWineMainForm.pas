unit GetControlTextOnWineMainForm;

//{$mode objfpc}{$H+}

interface

uses
  Windows, Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfrmGetControlTextOnWineMain }

  TfrmGetControlTextOnWineMain = class(TForm)
    lbeControlTextNoASCII0NoTrunc: TLabeledEdit;
    lbeControlTextNoASCII0TruncToTwice: TLabeledEdit;
    lblTextLength: TLabel;
    lblRealTextLength: TLabel;
    lblTextLengthNoASCII0: TLabel;
    lblInfo: TLabel;
    lbeControlClass: TLabeledEdit;
    lbeControlText: TLabeledEdit;
    lbeControlTextNoASCII0: TLabeledEdit;
    pnlReportedLength: TPanel;
    pnlHex: TPanel;
    tmrScan: TTimer;
    procedure tmrScanTimer(Sender: TObject);
  private

  public

  end;

var
  frmGetControlTextOnWineMain: TfrmGetControlTextOnWineMain;

implementation

{$R *.frm}


uses
  ControlInfo;


function StringToHex(AStr: string): string;
var
  i: Integer;
begin
  Result := '';
  for i := 1 to Length(AStr) do
    Result := Result + IntToHex(Ord(AStr[i]), 2) + ' ';
end;


{ TfrmGetControlTextOnWineMain }

procedure TfrmGetControlTextOnWineMain.tmrScanTimer(Sender: TObject);
var
  TempControlClass, TempControlText: string;
  RawText: string;
  ControlHandle: THandle;
  tp: TPoint;
  ReportedLength: Integer;
begin
  GetCursorPos(tp);
  ControlHandle := WindowFromPoint(tp);

  TempControlClass := GetControlClass(ControlHandle);
  TempControlText := GetControlText(ControlHandle, ReportedLength, RawText);

  lbeControlClass.Text := TempControlClass;
  lbeControlText.Text := TempControlText;
  lbeControlTextNoASCII0.Text := StringReplace(TempControlText, #0, '', [rfReplaceAll]);
  lbeControlTextNoASCII0NoTrunc.Text := StringReplace(RawText, #0, '', [rfReplaceAll]);
  lbeControlTextNoASCII0TruncToTwice.Text := StringReplace(Copy(RawText, 1, ReportedLength shl 1), #0, '', [rfReplaceAll]);

  pnlReportedLength.Caption := 'Reported Length: ' + IntToStr(ReportedLength);
  pnlHex.Caption := StringToHex(RawText);

  lblRealTextLength.Caption := 'RealLen: ' + IntToStr(Length(TempControlText));
  lblTextLength.Caption := 'Len: ' + IntToStr(Length(lbeControlText.Text));
  lblTextLengthNoASCII0.Caption := 'Len: ' + IntToStr(Length(lbeControlTextNoASCII0.Text));
end;

end.

