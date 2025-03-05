unit eNota.Controller.NotaFiscal.Enviar;

interface

uses eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalEnviar = class(TInterfacedObject, iCommand)
  private
    FParent: iNotafiscal;
  public
    constructor Create(Parent: iNotafiscal);
    destructor Destroy; override;
    class function New(Parent: iNotafiscal): iCommand;
    function Execute: iCommand;
  end;

implementation

{ TControllerNotaFiscalCriar }

constructor TControllerNotaFiscalEnviar.Create(Parent: iNotafiscal);
begin
Fparent := Parent;
end;

destructor TControllerNotaFiscalEnviar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEnviar.Execute: iCommand;
begin
  Result := Self;
  FParent.Enviar;
end;

class function TControllerNotaFiscalEnviar.New(Parent: iNotafiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
