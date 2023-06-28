unit Controller.Item;

interface

uses
  Controller.Interfaces;

type
  TControllerItem = class(TInterfacedObject, iControllerItens)
  private
    [weak]
    FParent: iControllerVenda;
    FCodigo: Integer;
  public
    constructor Create(Parent: iControllerVenda);
    destructor Destroy; override;
    class function New(Parent: iControllerVenda): iControllerItens;
    function Codigo(Value: Integer): iControllerItens;
    function Vender: iControllerItens;
    function &End: iControllerVenda;
  end;

implementation

{ TControllerItem }

function TControllerItem.Codigo(Value: Integer): iControllerItens;
begin
  Result := Self;
  FCodigo := Value;
end;

constructor TControllerItem.Create(Parent: iControllerVenda);
begin
  FParent := Parent;
end;

destructor TControllerItem.Destroy;
begin

  inherited;
end;

function TControllerItem.&End: iControllerVenda;
begin
  Result := FParent
end;

class function TControllerItem.New(Parent: iControllerVenda): iControllerItens;
begin
  Result := Self.Create(Parent);
end;

function TControllerItem.Vender: iControllerItens;
begin
  Result := Self;
  FParent.Model.Item.Codigo(FCodigo).Vender;
end;

end.
