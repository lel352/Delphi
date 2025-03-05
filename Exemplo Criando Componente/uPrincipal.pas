unit uPrincipal;

interface


uses
  System.Classes, sysutils;

procedure register;

Type
  TNotifyEvent = Procedure (Sender: TObject) of Object;

  TEventos = Class(TComponent)
  private
    FNome: String;
    FStatus: TNotifyEvent;
    procedure SetNome(const Value: String);
    procedure SetStatus(const Value: TNotifyEvent);


  public
    function TamanhoString(Value: String): Integer;
    procedure OnStatus;
  published
    property Nome: String read FNome write SetNome;
    property Status: TNotifyEvent read FStatus write SetStatus;
  End;

implementation

{ TEventos }

procedure register;
begin
  RegisterComponents('MeusComponentesExemplo', [TEventos]);
end;

procedure TEventos.OnStatus;
begin
  if assigned(Status) then
    Status(Self);
end;

procedure TEventos.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TEventos.SetStatus(const Value: TNotifyEvent);
begin
  FStatus := Value;
end;

function TEventos.TamanhoString(Value: String): Integer;
begin
  nome := Value;
  result := Value.length;
  OnStatus;
end;

end.
