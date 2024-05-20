unit frmExemplo4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Proc_PossoGravar;
    function Func_PossoGravar: Boolean;

  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  try
    Proc_PossoGravar;
    ShowMessage('Gravado com Sucesso');
  Except
    on e: Exception do
      ShowMessage(e.message)
  end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  if Func_PossoGravar then
    ShowMessage('Gravado com sucesso')
  else
    ShowMessage('Não pode ser gravado');
end;

function TForm4.Func_PossoGravar: Boolean;
begin
  Result := False;
end;

procedure TForm4.Proc_PossoGravar;
begin
  raise Exception.Create('Error Não pode ser gravado');
end;

end.
