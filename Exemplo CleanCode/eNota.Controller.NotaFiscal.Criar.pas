unit eNota.Controller.NotaFiscal.Criar;

interface

uses eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalCriar = class(TInterfacedObject, iCommand)
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

constructor TControllerNotaFiscalCriar.Create(Parent: iNotafiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalCriar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalCriar.Execute: iCommand;
begin
  result := Self;
  FParent.Criar
end;

class function TControllerNotaFiscalCriar.New(Parent: iNotafiscal): iCommand;
begin
  result := Self.Create(Parent)
end;

end.
