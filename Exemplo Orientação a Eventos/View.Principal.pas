unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Controller.Principal,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    prgBar: TProgressBar;
    memo: TMemo;
    btnIniciarEvento: TButton;
    lblMensagem: TLabel;
    procedure btnIniciarEventoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure evMensagem(Msg: String);
    procedure evProgresso(Posicao: Integer);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnIniciarEventoClick(Sender: TObject);
var
  Control: TController;
begin
  Control := TController.Create;
  try
    Control.evMsg := evMensagem;
    Control.evProgresso := evProgresso;

    Control.AcionarEventos;
  finally
   FreeAndNil(Control);
  end
end;

procedure TfrmPrincipal.evMensagem(Msg: String);
begin
  memo.Lines.Add(Msg);
  lblMensagem.Caption := Msg;
end;

procedure TfrmPrincipal.evProgresso(Posicao: Integer);
begin
  prgBar.Position := Posicao;
  Application.ProcessMessages;
end;

end.
