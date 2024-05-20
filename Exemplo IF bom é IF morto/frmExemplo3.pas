unit frmExemplo3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,  System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEnumTeste = (tpEntrada, tpSaida, tpDevolucao);

type
  ThelperEnum = record helper for TEnumTeste
  public
   function SQL: String;
  end;

type
  TForm3 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  if ComboBox1.Text = 'Entrada' then
    ShowMessage('SELECT * FROM ENTRADA')
  else if ComboBox1.Text = 'Saída' then
    ShowMessage('SELECT * FROM SAIDA')
  else if ComboBox1.Text = 'Devolução' then
    ShowMessage('SELECT * FROM DEVOLUCAO')
  else
    ShowMessage('Erro');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  ShowMessage(
    TEnumTeste(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).SQL
  );
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.Clear;
  ComboBox1.Items.AddObject('Entrada', TObject(tpEntrada));
  ComboBox1.Items.AddObject('Saída', TObject(tpSaida));
  ComboBox1.Items.AddObject('Devolução', TObject(tpDevolucao));
end;

{ ThelperEnum }

function ThelperEnum.SQL: String;
var
  ListaSQL: TList<String>;
begin
  ListaSQL := TList<String>.Create;
  try
    ListaSQL.Insert(Integer(TEnumTeste.tpEntrada), 'SELECT * FROM ENTRADA');
    ListaSQL.Insert(Integer(TEnumTeste.tpSaida), 'SELECT * FROM SAIDA');
    ListaSQL.Insert(Integer(TEnumTeste.tpDevolucao), 'SELECT * FROM DEVOLUCAO');
    Result := ListaSQL[Integer(Self)];
  finally
    ListaSQL.free;
  end;
end;

end.
