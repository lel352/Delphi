unit UPatternCompra;

interface

type
  TComprar = class
    Numero: Integer;
    Quantia: Double;
    Proposito: String;
    constructor Create(Numero: Integer; Quantia: Double; Proposito: String);
  end;

implementation

{ TComprar }

constructor TComprar.Create(Numero: Integer; Quantia: Double;
  Proposito: String);
begin
  Self.Numero := Numero;
  Self.Quantia := Quantia;
  Self.Proposito := Proposito;
end;

end.
