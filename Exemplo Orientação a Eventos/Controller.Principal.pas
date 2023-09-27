unit Controller.Principal;

interface

uses
  System.SysUtils;

type
  tEvMensagem = procedure(Mensagem : String) of Object;
  tEvProgresso = procedure(Posicao : Integer) of Object;

type
  TController = class
  private
    FMsg : String;
    FPosicao : Integer;
    FevMsg : tEvMensagem;
    FevProgresso : tEvProgresso;
    procedure setMsg(Value : String);
    procedure setPosicao(Value : Integer);
  public
    property evMsg : tEvMensagem read FevMsg write FevMsg;
    property evProgresso : tEvProgresso read FevProgresso write FevProgresso;
    property Msg : String read FMsg write setMsg;
    property Posicao : Integer read FPosicao write setPosicao;
    procedure AcionarEventos;
  end;

implementation

procedure TController.AcionarEventos;
var
  I : Integer;
begin
  for I := 0 to 100 do
  begin
    Msg := 'Adicionando via orienta��o a eventos' + IntToStr(I);
    Posicao := I;
    Sleep(100);
  end;

end;

procedure TController.setMsg(Value : String);
begin
  if Assigned(FevMsg) then
    FevMsg(Value);
end;

procedure TController.setPosicao(Value : Integer);
begin
  if Assigned(FevProgresso) then
    FevProgresso(Value);
end;


end.
