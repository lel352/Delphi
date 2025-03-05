unit eNota.Controller.NotaFiscal.Validar;

interface

uses eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalValidar = class(TInterfacedObject, iCommand)
  private
    FParent: iNotafiscal;
  public
    constructor Create(Parent: iNotafiscal);
    destructor Destroy; override;
    class function New(Parent: iNotafiscal): iCommand;
    function Execute: iCommand;
  end;

implementation

{ TControllerNotaFiscalValidar }

constructor TControllerNotaFiscalValidar.Create(Parent: iNotafiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalValidar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalValidar.Execute: iCommand;
begin
  result := Self;
  FParent.Validar;
end;

class function TControllerNotaFiscalValidar.New(Parent: iNotafiscal): iCommand;
begin
  result := Self.Create(Parent);
end;

end.
