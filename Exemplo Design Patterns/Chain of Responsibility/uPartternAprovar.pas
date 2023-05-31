unit uPartternAprovar;

interface

uses
  UPartternInterface, UPatternCompra;

type
  TAprovar = class(TInterfacedObject, iAprovar)
  protected
    FSucessor: iAprovar;
  public
    procedure SetSucessor(Sucessor: iAprovar);
    function ProcessaRequest(Comprar: TComprar): String; virtual; abstract;
  end;

implementation


{ TAprovar }

procedure TAprovar.SetSucessor(Sucessor: iAprovar);
begin
  Self.FSucessor := Sucessor;
end;

end.
