unit UPatternVicePresidente;

interface

uses
  uPartternAprovar, UPatternCompra, System.SysUtils;

type
  TVicePresidente = Class(TAprovar)
    function ProcessaRequest(Comprar: TComprar): String; override;
  End;

implementation

{ TVicePresidente }

function TVicePresidente.ProcessaRequest(Comprar: TComprar): String;
begin
  if Comprar.Quantia < 250000.0 then
      result := Format('Solicitação Aprovada pelo Vice-Precidente  # %d',
      [Comprar.Numero])
  else result := FSucessor.ProcessaRequest(Comprar);

end;

end.
