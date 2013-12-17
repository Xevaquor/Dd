program Bolek;

uses
  Forms,
  MainApplication in 'MainApplication.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
