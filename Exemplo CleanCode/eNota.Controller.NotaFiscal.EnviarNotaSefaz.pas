unit eNota.Controller.NotaFiscal.EnviarNotaSefaz;

interface

uses eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalEnviarNotaSefaz = class(TInterfacedObject, iCommand)
  private
    FParent: iNotaFiscalView;
  public
    constructor Create(Parent: iNotaFiscalView);
    destructor Destroy; override;
    class function New(Parent: iNotaFiscalView): iCommand;
    function Execute: iCommand;
  end;

implementation

{ TControllerNotaFiscalEnviarNotaSefaz }

constructor TControllerNotaFiscalEnviarNotaSefaz.Create
  (Parent: iNotaFiscalView);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalEnviarNotaSefaz.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEnviarNotaSefaz.Execute: iCommand;
begin
  Result := Self;
  FParent.EnviarNotaSefaz;
end;

class function TControllerNotaFiscalEnviarNotaSefaz.New(Parent: iNotaFiscalView)
  : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
