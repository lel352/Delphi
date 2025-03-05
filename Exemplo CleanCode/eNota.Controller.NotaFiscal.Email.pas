unit eNota.Controller.NotaFiscal.Email;

interface

uses eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalEmail = class(TInterfacedObject, iCommand)
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

constructor TControllerNotaFiscalEmail.Create(Parent: iNotafiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalEmail.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEmail.Execute: iCommand;
begin
  Result := Self;
  FParent.Email;
end;

class function TControllerNotaFiscalEmail.New(Parent: iNotafiscal): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
