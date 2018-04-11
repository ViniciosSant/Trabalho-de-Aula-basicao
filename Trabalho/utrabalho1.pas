unit utrabalho1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btOk: TButton;
    edLogin: TEdit;
    edSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uTela2;

{$R *.dfm}

procedure TForm1.btOkClick(Sender: TObject);
begin

  if (edLogin.Text = 'admin') or (edLogin.Text = 'ADMIN' ) then
     begin

       if (edSenha.Text = 'admin') or (edSenha.Text = 'ADMIN') then
          begin
            Form2 := TForm2.Create(Application);
            try
              Form2.Show;
            finally
             end;
          end
       else
          MessageDlg('Senha incorreta!',mtError,[mbOk],0);

     end
  else
  if (edLogin.Text = wUsuario) then
     begin
       if (edSenha.Text = wSenha) then
           MessageDlg('Usuário, '+ wNome+ ' logado com sucesso!',mtInformation,[mbOk],0);
     end
  else
     MessageDlg('Usuário incorreto!',mtError,[mbOk],0);



end;


end.
