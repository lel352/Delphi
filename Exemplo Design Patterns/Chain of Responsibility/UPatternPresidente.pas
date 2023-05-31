unit UPatternPresidente;

interface

uses
  uPartternAprovar, UPatternCompra, System.SysUtils;

type
  TPresidente = Class(TAprovar)
    function ProcessaRequest(Comprar: TComprar): String; override;
  End;

implementation

{ TPresidente }

function TPresidente.ProcessaRequest(Comprar: TComprar): String;
begin
  if Comprar.Quantia < 1000000.0 then
      result := Format('Solicita��o Aprovada pelo Presidente  # %d',
      [Comprar.Numero])
  else result := Format('Pedido # %d requer uma reuni�o', [Comprar.Numero])
end;

end.
