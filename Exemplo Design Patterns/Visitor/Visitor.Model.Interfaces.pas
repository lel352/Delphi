unit Visitor.Model.Interfaces;

interface

type
  iVisitor = interface;
  iVisitable = interface;

    iItem = interface['{37F69946-8300-473C-B32E-52A31BC862AF}']
    function SetPrecoUnitario(Value: Currency): iItem;
    function PrecoUnitario: Currency;
    function Regras: iVisitable;
  end;

  iItemRegras = interface
    ['{D777CCA7-AECC-4400-868C-D7D0D87F183A}']
    function PrecoVenda: Currency;
    function PrecoPromocao: Currency;
    function Visitor: iVisitor;
  end;

  iVisitor = interface
    ['{937AD8A0-1A52-432D-B833-A9856E82CE77}']
    function Visit(Value: iItem): iItemRegras;
  end;

  iVisitable = interface
    ['{06BFCBE5-C6D2-40C2-B963-41F4C05B3463}']
    function Accept(Value: iVisitor): iItemRegras;
  end;

implementation

end.
