program GetControlTextOnWine;

uses
  Forms,
  GetControlTextOnWineMainForm in 'GetControlTextOnWineMainForm.pas' {frmGetControlTextOnWineMain},
  ControlInfo in '..\ControlInfo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmGetControlTextOnWineMain, frmGetControlTextOnWineMain);
  Application.Run;
end.
