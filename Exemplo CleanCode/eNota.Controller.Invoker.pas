unit eNota.Controller.Invoker;

interface

uses eNota.Controller.NotaFiscal.Interfaces, System.Generics.Collections;

type
  TControllerInvoker = class(TInterfacedObject, iInvoker)
  private
    FLista: TList<iCommand>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iInvoker;
    function add(Value: iCommand): iInvoker;
    function Execute: iInvoker;
  end;

implementation

uses
  System.SysUtils;

{ TControllerInvoker }

function TControllerInvoker.add(Value: iCommand): iInvoker;
begin
  Result := Self;
  FLista.add(Value)
end;

constructor TControllerInvoker.Create;
begin
  FLista := TList<iCommand>.Create;
end;

destructor TControllerInvoker.Destroy;
begin
  FreeAndNil(FLista);

  inherited;
end;

function TControllerInvoker.Execute: iInvoker;
begin
  Result := Self;
  for var I := 0 to Pred(FLista.Count) do FLista[I].Execute;
end;

class function TControllerInvoker.New: iInvoker;
begin

end;

end.
