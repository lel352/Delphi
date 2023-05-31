unit Unit1;

interface

uses UpartternAprovar, UPatternCompra, system.SysUtils;

type
  TDiretor = class(TAprovar)
    function ProcessaRequest(Comprar: TComprar): String; override;
  end;

implementation

{ TDiretor }

function TDiretor.ProcessaRequest(Comprar: TComprar): String;
begin
  if comprar.Quantia <  10000.0 then
     result := Format('Solicitação Aprovada pelo diretor # %d,' [Comprar.Numero])
  else
    result := FSucessor.ProcessaRequest(Comprar);
end;

end.
