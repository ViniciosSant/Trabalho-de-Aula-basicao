unit uTela2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edNome: TEdit;
    edSobrenome: TEdit;
    edCpf: TEdit;
    edNasc: TEdit;
    edUsuario: TEdit;
    edSenha: TEdit;
    btSalvar: TButton;
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  wUsuario   : String;
  wSenha     : String;
  wNome      : String;
  wCpf       : String;
  wNasc      : String;
  wSobrenome : String;

implementation

{$R *.dfm}

procedure TForm2.btSalvarClick(Sender: TObject);
begin
  wUsuario := edUsuario.Text;
  wSenha   := edSenha.Text;
  wNome    := edNome.Text;

  MessageDlg('Dados Salvos com sucesso!',mtInformation,[mbOk],0);
  Form2.Destroy;

end;

end.
