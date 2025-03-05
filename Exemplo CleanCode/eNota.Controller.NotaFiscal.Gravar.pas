unit eNota.Controller.NotaFiscal.Gravar;

interface

uses eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalGravar = class(TInterfacedObject, iCommand)
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

constructor TControllerNotaFiscalGravar.Create(Parent: iNotafiscal);
begin
 FParent := Parent;
end;

destructor TControllerNotaFiscalGravar.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalGravar.Execute: iCommand;
begin
  Result := Self;
  FParent.Gravar;
end;

class function TControllerNotaFiscalGravar.New(Parent: iNotafiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
