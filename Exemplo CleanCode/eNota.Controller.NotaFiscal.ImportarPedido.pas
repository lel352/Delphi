unit eNota.Controller.NotaFiscal.ImportarPedido;

interface

uses eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalImportarPedido = class(TInterfacedObject, iCommand)
  private
    FParent: iNotafiscal;
    FNumeroPedido: Integer;
  public
    constructor Create(Parent: iNotafiscal; FNumeroPedido: Integer);
    destructor Destroy; override;
    class function New(Parent: iNotafiscal; FNumeroPedido: Integer): iCommand;
    function Execute: iCommand;
  end;

implementation

{ TControllerNotaFiscalCriar }

constructor TControllerNotaFiscalImportarPedido.Create(Parent: iNotafiscal; FNumeroPedido: Integer);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalImportarPedido.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalImportarPedido.Execute: iCommand;
begin
  result := Self;
  FParent.ImportarPedido(FNumeroPedido);
end;

class function TControllerNotaFiscalImportarPedido.New(Parent: iNotafiscal; FNumeroPedido: Integer): iCommand;
begin
  result := Self.Create(Parent, FNumeroPedido)
end;

end.
