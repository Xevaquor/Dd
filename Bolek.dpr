program Bolek;



uses
  Forms,
  MainApplication in 'MainApplication.pas' {MainForm},
  FormAdd in 'FormAdd.pas' {Form1},
  FormEdit in 'FormEdit.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
