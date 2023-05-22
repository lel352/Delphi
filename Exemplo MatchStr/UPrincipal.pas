unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.AnsiStrings;

type
  TForm9 = class(TForm)
    edtTexto: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure edtTextoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.edtTextoExit(Sender: TObject);
var
  texto: AnsiString;
begin
  texto := Trim(uppercase(edtTexto.Text));

  if not MatchStr(uppercase(texto), ['', 'DOMINGO','SEGUNDA','TERÇA','QUARTA','QUINTA','SEXTA','SABADO']) then begin
    ShowMessage('Dia da semana digitado Inválido');
    edtTexto.SetFocus;
    abort;
  end;

end;

end.
