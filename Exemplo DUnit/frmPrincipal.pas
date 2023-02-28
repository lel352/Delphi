unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFPrincipal = class(TForm)
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    lblNumero1: TLabel;
    lblNumero2: TLabel;
    btnSoma: TButton;
    btnSubtrair: TButton;
    btnDividir: TButton;
    btnMultiplicar: TButton;
    edtResultado: TEdit;
    Label3: TLabel;
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
     function somar(const ANumero1, ANumero2: Integer): Integer; overload;
     function somar(const ANumero1, ANumero2: String): Integer; overload;
     function subtrair(const ANumero1, ANumero2: Integer): Integer; overload;
     function subtrair(const ANumero1, ANumero2: String): Integer; overload;
     function dividir(const ANumero1, ANumero2: Integer): Integer; overload;
     function dividir(const ANumero1, ANumero2: String): Integer; overload;
     function multiplicar(const ANumero1, ANumero2: Integer): Integer; overload;
     function multiplicar(const ANumero1, ANumero2: String): Integer; overload;
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

{ TFPrincipal }

procedure TFPrincipal.btnDividirClick(Sender: TObject);
begin
   edtResultado.Text := Self.dividir(edtNumero1.Text,edtNumero2.Text).ToString;
end;

procedure TFPrincipal.btnMultiplicarClick(Sender: TObject);
begin
   edtResultado.Text := Self.multiplicar(edtNumero1.Text,edtNumero2.Text).ToString;
end;

procedure TFPrincipal.btnSomaClick(Sender: TObject);
begin
 edtResultado.Text := Self.somar(edtNumero1.Text,edtNumero2.Text).ToString;
end;

procedure TFPrincipal.btnSubtrairClick(Sender: TObject);
begin
 edtResultado.Text := Self.subtrair(edtNumero1.Text,edtNumero2.Text).ToString;
end;

function TFPrincipal.somar(const ANumero1, ANumero2: String): Integer;
begin
  result := somar(StrtoInt(ANumero1), StrtoInt(ANumero2));
end;

function TFPrincipal.somar(const ANumero1, ANumero2: Integer): Integer;
begin
  result := ANumero1 + ANumero2;
end;

function TFPrincipal.dividir(const ANumero1, ANumero2: String): Integer;
begin
  result := dividir(StrtoInt(ANumero1), StrtoInt(ANumero2));
end;

function TFPrincipal.dividir(const ANumero1, ANumero2: Integer): Integer;
begin
  result := ANumero1 div ANumero2;
end;

function TFPrincipal.multiplicar(const ANumero1, ANumero2: String): Integer;
begin
  result := multiplicar(StrtoInt(ANumero1), StrtoInt(ANumero2));
end;

function TFPrincipal.multiplicar(const ANumero1, ANumero2: Integer): Integer;
begin
  result := ANumero1 * ANumero2;
end;

function TFPrincipal.subtrair(const ANumero1, ANumero2: String): Integer;
begin
 result := subtrair(StrtoInt(ANumero1), StrtoInt(ANumero2));
end;

function TFPrincipal.subtrair(const ANumero1, ANumero2: Integer): Integer;
begin
 result := ANumero1 - ANumero2;
end;

end.
