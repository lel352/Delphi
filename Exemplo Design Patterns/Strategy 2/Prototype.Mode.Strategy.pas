unit Prototype.Mode.Strategy;

interface

type
  TPromocao = (Domingo, Segunda, Terca, Quarta, Quinta, Sexta, Sabada);

  THelperPromocao = record helper for TPromocao
    function PrecoVenda(PrecoUnitario: Currency): Currency;
  end;

implementation

{ THelperPromocao }

function THelperPromocao.PrecoVenda(PrecoUnitario: Currency): Currency;
begin
  case self of
    Domingo:
      result := PrecoUnitario;
    Segunda:
      result := PrecoUnitario - (PrecoUnitario * 0.20);
    Terca:
      result := PrecoUnitario - (PrecoUnitario * 0.30);
    Quarta:
      result := PrecoUnitario - (PrecoUnitario * 0.40);
    Quinta:
      result := PrecoUnitario - (PrecoUnitario * 0.50);
    Sexta:
      result := PrecoUnitario - (PrecoUnitario * 0.60);
    Sabada:
      result := PrecoUnitario - (PrecoUnitario * 0.70);
  end;
end;

end.
