unit Controller.Observer.Interfaces;

interface

type

  TRecordItem = record
    Descricao: String;
    Quantidade: Currency;
    Valor: Currency;
  end;

  iObserverItem = interface
    function UpdateItem(Value: TRecordItem): iObserverItem;
  end;

  iSubjectItem = interface
    function Add(Value: iObserverItem): iSubjectItem;
    function Notify(Value: TRecordItem): iSubjectItem;
  end;

implementation

end.
