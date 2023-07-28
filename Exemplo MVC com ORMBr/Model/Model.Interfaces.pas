unit Model.Interfaces;

interface

uses Controller.Observer.Interfaces;

type
  iModelItem = interface;

  iModelVenda = interface
    function Item: iModelItem;
    function ObserverItem(Value: iSubjectItem): iModelVenda; overload;
    function ObserverItem: iSubjectItem; overload;
  end;

  iModelItem = interface
    function Codigo(Value: Integer): iModelItem;
    function Vender: iModelItem;
    function &End: iModelVenda;
  end;

implementation

end.
