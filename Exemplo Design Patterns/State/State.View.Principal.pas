unit State.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, State.Model.Interfacepas;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
    FiItem: iItem;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses State.Model.Item, State.Model.Item.Ativo, State.Model.Item.Inativo,
  State.Model.Item.Vendido;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FiItem.State.SetState(TModelItemAtivo.New);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FiItem.State.SetState(TModelItemVendido.New);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FiItem.State.SetState(TModelItemInativo.New);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FiItem.Operacoes.Vender;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  FiItem.Operacoes.Cancelar;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  FiItem.Operacoes.Desconto;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  FiItem.Operacoes.Devovler;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FiItem := TModelItem.New;
end;

end.
