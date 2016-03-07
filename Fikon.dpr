program Fikon;

uses
  Forms,
  MainU in 'MainU.pas' {frmMain},
  FikonU in 'FikonU.pas',
  Fikon2U in 'Fikon2U.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
