unit State.Model.Item.Vendido;

interface

uses System.SysUtils, State.Model.Interfacepas;

type
  TModelItemVendido = class(TInterfacedObject, iItemOperacoes)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iItemOperacoes;
    function Vender: iItemOperacoes;
    function Cancelar: iItemOperacoes;
    function Desconto: iItemOperacoes;
    function Devovler: iItemOperacoes;
  end;

implementation

{ TModelItemVendido }

function TModelItemVendido.Cancelar: iItemOperacoes;
begin
  Result := Self;
end;

constructor TModelItemVendido.Create;
begin

end;

function TModelItemVendido.Desconto: iItemOperacoes;
begin
  Result := Self;
end;

destructor TModelItemVendido.Destroy;
begin

  inherited;
end;

function TModelItemVendido.Devovler: iItemOperacoes;
begin
  Result := Self;
end;

class function TModelItemVendido.New: iItemOperacoes;
begin
  Result := Self.Create;
end;

function TModelItemVendido.Vender: iItemOperacoes;
begin
  Result := Self;
  raise Exception.Create('Este Item já foi vendido');
end;

end.
