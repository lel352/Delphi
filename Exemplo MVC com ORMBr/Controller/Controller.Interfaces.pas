unit Controller.Interfaces;

interface

uses
  Model.Interfaces, Controller.Observer.Interfaces;

type
  iControllerItens = interface;

  iControllerVenda = interface
    function Item: iControllerItens;
    function Model: iModelVenda;
    function ObserverItem: iSubjectItem;
  end;

  iControllerItens = interface
    function Codigo(Value: Integer): iControllerItens;
    function Vender: iControllerItens;
    function &End: iControllerVenda;
  end;

implementation

end.
