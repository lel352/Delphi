unit State.Model.Interfacepas;

interface

type
  iState<T> = interface
    function SetState(Value: T): T;
  end;

  iItemOperacoes = interface
    ['{4A2A7E8D-442A-4884-99A5-4E7B1E4B1418}']
    function Vender: iItemOperacoes;
    function Cancelar: iItemOperacoes;
    function Desconto: iItemOperacoes;
    function Devovler: iItemOperacoes;
  end;

  iItem = interface
    ['{D208F813-A77C-440D-8F0E-C24C581FA729}']
    function State: iState<iItemOperacoes>;
    function Operacoes: iItemOperacoes;
  End;

  iItemState = interface
    ['{FA0D9CB9-5CC4-48E3-8A19-0A4FD8B2DDDF}']
    function SetState(Value: iItemOperacoes): iItem;
  end;

implementation

end.
