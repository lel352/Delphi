unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  iNota = interface
    ['{A70EEF0E-5A2D-4F4E-89CA-2E4DA25BC46B}']
    function Numero: Integer;
  end;

  iNotaItens = interface
    ['{B8072642-3992-4104-96F5-26BC12EB926F}']
    function RetornaNumero: Integer;
  end;

  TNota = class(TInterfacedObject, iNota)
    function Numero: Integer;
  end;

  TNotaItens = class(TInterfacedObject, iNotaItens)
  private
    FNota: iNota;
  public
    constructor Create(Nota: iNota);
    function RetornaNumero: Integer;
  end;

  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
{ TNota }

function TNota.Numero: Integer;
begin
  Result := 10
end;

{ TNotaItens }

constructor TNotaItens.Create(Nota: iNota);
begin
  FNota := Nota;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Nota: iNota;
  NotaItens: iNotaItens;
begin
  Nota := TNota.Create as iNota;
  NotaItens := TNotaItens.Create(Nota) as iNotaItens;

  ShowMessage(NotaItens.RetornaNumero.ToString);
end;

function TNotaItens.RetornaNumero: Integer;
begin
  Result := FNota.Numero;
end;

end.
