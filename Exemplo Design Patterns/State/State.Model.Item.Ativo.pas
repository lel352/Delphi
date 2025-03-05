unit State.Model.Item.Ativo;

interface

uses System.SysUtils, State.Model.Interfacepas;

type
  TModelItemAtivo = class(TInterfacedObject, iItemOperacoes)
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

{ TModelItemAtivo }

function TModelItemAtivo.Cancelar: iItemOperacoes;
begin
  Result := Self;
  raise Exception.Create('Este Item ainda não foi vendido');
end;

constructor TModelItemAtivo.Create;
begin

end;

function TModelItemAtivo.Desconto: iItemOperacoes;
begin
  Result := Self;
  raise Exception.Create('Este Item ainda não foi vendido');
end;

destructor TModelItemAtivo.Destroy;
begin

  inherited;
end;

function TModelItemAtivo.Devovler: iItemOperacoes;
begin
  Result := Self;
  raise Exception.Create('Este Item ainda não foi vendido');
end;

class function TModelItemAtivo.New: iItemOperacoes;
begin
  Result := Self.Create;
end;

function TModelItemAtivo.Vender: iItemOperacoes;
begin
  Result := Self;
end;

end.
