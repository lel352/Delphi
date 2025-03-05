unit Visitor.Model.Item.Regra.Varejo;

interface

uses Visitor.Model.Interfaces;

type
  TModelItemRegraVarejo = class(TInterfacedObject, iItemRegras, iVisitor)
  private
    FVisit: iItem;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iItemRegras;
    function PrecoVenda: Currency;
    function PrecoPromocao: Currency;
    function Visit(Value: iItem): iItemRegras;
    function Visitor: iVisitor;
  end;

implementation

{ TModelItemRegraVarejo }

constructor TModelItemRegraVarejo.Create;
begin

end;

destructor TModelItemRegraVarejo.Destroy;
begin

  inherited;
end;

class function TModelItemRegraVarejo.New: iItemRegras;
begin
  result := Self.Create;
end;

function TModelItemRegraVarejo.PrecoPromocao: Currency;
begin
 Result := (FVisit.PrecoUnitario * 0.8);
end;

function TModelItemRegraVarejo.PrecoVenda: Currency;
begin
 Result := (FVisit.PrecoUnitario * 1);
end;

function TModelItemRegraVarejo.Visit(Value: iItem): iItemRegras;
begin
  FVisit := Value;
    result := Self;
end;

function TModelItemRegraVarejo.Visitor: iVisitor;
begin
  result := Self;
end;

end.
