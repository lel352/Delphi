unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFPrincipal = class(TForm)
    edtValor: TEdit;
    lblValor: TLabel;
    btnIsEmpty: TButton;
    procedure btnIsEmptyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses uFunctions;

{ TForm9 }

procedure TFPrincipal.btnIsEmptyClick(Sender: TObject);
begin
  if Tfuncoes.IsEmpty(edtValor) then ShowMessage('O edit está vazio')
  else ShowMessage('O edit possuir algum valor')

end;

end.
