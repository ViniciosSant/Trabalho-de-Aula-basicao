program Project1;

uses
  Forms,
  utrabalho1 in 'utrabalho1.pas' {Form1},
  uTela2 in 'uTela2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
