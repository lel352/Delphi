unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TTipoPessoa = (tpFisica, tpJuridica);

  TTipoPessoaHelper = record helper for TTipoPessoa
    function ToString: String;
    procedure carregarComboBox(aComboBox: TComboBox);
  end;

  TeditHelper = class helper for TEdit
    function Reverse: string;
  end;

  TForm9 = class(TForm)
    btnReverse: TButton;
    edtConteudo: TEdit;
    edtReverse: TEdit;
    lblConteudo: TLabel;
    lblReverse: TLabel;
    btnCarregar: TButton;
    cbxTipoPessoa: TComboBox;
    procedure btnReverseClick(Sender: TObject);
    procedure btnCarregarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.btnCarregarClick(Sender: TObject);
var
  tipoPessoa: TTipoPessoa;
begin
  tipoPessoa.carregarComboBox(cbxTipoPessoa);
  cbxTipoPessoa.ItemIndex := 0;
end;

procedure TForm9.btnReverseClick(Sender: TObject);
begin
  edtReverse.Text := edtConteudo.Reverse;
end;

{ TeditHelper }

function TeditHelper.Reverse: string;
var
  i: Integer;
begin
  for i := Length(Self.Text) downto 1 do begin
    Result := Result + Self.Text[i];
  end;
end;

{ TTipoPessoaHelper }

procedure TTipoPessoaHelper.carregarComboBox(aComboBox: TComboBox);
var
  e: TTipoPessoa;
begin
  for e := low(TTipoPessoa) to high(TTipoPessoa) do aComboBox.Items.Add(e.ToString);
end;

function TTipoPessoaHelper.ToString: String;
begin
  case Self of
    tpFisica: Result := 'Física';
    tpJuridica: Result := 'Jurídica';
  end;
end;

end.
