unit UPartternInterface;

interface

uses UPatternCompra;

type
  iAprovar = interface
    procedure SetSucessor(Sucessor: iAprovar);
    function ProcessaRequest(Comprar: TComprar): String;
  end;

implementation

end.
