unit State.Model.Item.Inativo;

interface

uses System.SysUtils, State.Model.Interfacepas;

type
  TModelItemInativo = class(TInterfacedObject, iItemOperacoes)
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

{ TModelItemInativo }

function TModelItemInativo.Cancelar: iItemOperacoes;
begin
  Result := Self;
  raise Exception.Create('Este Item está Inativo');
end;

constructor TModelItemInativo.Create;
begin

end;

function TModelItemInativo.Desconto: iItemOperacoes;
begin
  Result := Self;
  raise Exception.Create('Este Item está Inativo');
end;

destructor TModelItemInativo.Destroy;
begin

  inherited;
end;

function TModelItemInativo.Devovler: iItemOperacoes;
begin
  Result := Self;
  raise Exception.Create('Este Item está Inativo');
end;

class function TModelItemInativo.New: iItemOperacoes;
begin
  Result := Self.Create
end;

function TModelItemInativo.Vender: iItemOperacoes;
begin
  Result := Self;
  raise Exception.Create('Este Item está Inativo');
end;

end.
