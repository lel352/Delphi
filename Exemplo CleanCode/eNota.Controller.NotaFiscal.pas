unit eNota.Controller.NotaFiscal;

interface

uses eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscal = class(TInterfacedObject, iNotaFiscal, iNotaFiscalView)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iNotaFiscalView;
    function Criar: iNotaFiscal;
    function Validar: iNotaFiscal;
    function Enviar: iNotaFiscal;
    function Gravar: iNotaFiscal;
    function Email: iNotaFiscal;
    function EnviarNotaSefaz: iNotaFiscal;
    function EnviarNotaSefazSemEmail: iNotaFiscal;
    function ImportarPedido(Value: Integer): iNotaFiscal;
    function GerarNotaPedido(IDPedido: Integer): iNotaFiscal;
  end;

implementation

{ TControllerNotaFiscal }

uses eNota.Controller.Invoker, eNota.Controller.NotaFiscal.Criar,
  eNota.Controller.NotaFiscal.Validar, eNota.Controller.NotaFiscal.Enviar,
  eNota.Controller.NotaFiscal.Gravar, eNota.Controller.NotaFiscal.Email,
  eNota.Controller.NotaFiscal.ImportarPedido;

constructor TControllerNotaFiscal.Create;
begin

end;

function TControllerNotaFiscal.Criar: iNotaFiscal;
begin
  result := Self;
end;

destructor TControllerNotaFiscal.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscal.Email: iNotaFiscal;
begin
  result := Self;
end;

function TControllerNotaFiscal.Enviar: iNotaFiscal;
begin
  result := Self;
end;

function TControllerNotaFiscal.EnviarNotaSefaz: iNotaFiscal;
begin
  result := Self;
  TControllerInvoker.New.Add(TControllerNotaFiscalCriar.New(Self))
    .Add(TControllerNotaFiscalValidar.New(Self))
    .Add(TControllerNotaFiscalEnviar.New(Self))
    .Add(TControllerNotaFiscalGravar.New(Self))
    .Add(TControllerNotaFiscalEmail.New(Self)).Execute;
end;

function TControllerNotaFiscal.EnviarNotaSefazSemEmail: iNotaFiscal;
begin
  result := Self;
  TControllerInvoker.New.Add(TControllerNotaFiscalCriar.New(Self))
    .Add(TControllerNotaFiscalValidar.New(Self))
    .Add(TControllerNotaFiscalEnviar.New(Self))
    .Add(TControllerNotaFiscalGravar.New(Self)).Execute;
end;

function TControllerNotaFiscal.GerarNotaPedido(IDPedido: Integer): iNotaFiscal;
begin
  result := Self;
  TControllerInvoker.New.Add(TControllerNotaFiscalImportarPedido.New(Self,
    IDPedido))
    .Add(TControllerNotaFiscalCriar.New(Self))
    .Add(TControllerNotaFiscalValidar.New(Self))
    .Add(TControllerNotaFiscalEnviar.New(Self))
    .Add(TControllerNotaFiscalGravar.New(Self))
    .Add(TControllerNotaFiscalEmail.New(Self)).Execute;
end;

function TControllerNotaFiscal.Gravar: iNotaFiscal;
begin
  result := Self;
end;

function TControllerNotaFiscal.ImportarPedido(Value: Integer): iNotaFiscal;
begin
  result := Self;
end;

class function TControllerNotaFiscal.New: iNotaFiscalView;
begin
  result := Self.Create;
end;

function TControllerNotaFiscal.Validar: iNotaFiscal;
begin
  result := Self;
end;

end.
