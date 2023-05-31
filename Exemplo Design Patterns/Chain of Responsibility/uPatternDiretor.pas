unit uPatternDiretor;

interface

uses UpartternAprovar, UPatternCompra, System.SysUtils;

type
  TDiretor = class(TAprovar)
    function ProcessaRequest(Comprar: TComprar): String; override;
  end;

implementation

{ TDiretor }

function TDiretor.ProcessaRequest(Comprar: TComprar): String;
begin
  if Comprar.Quantia < 10000.0 then
      result := Format('Solicitação Aprovada pelo diretor # %d',
      [Comprar.Numero])
  else result := FSucessor.ProcessaRequest(Comprar);
end;

end.
