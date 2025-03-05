unit Visitor.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Visitor.Model.Interfaces;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FItem: iItem;
    function TabelaPreco: iVisitor;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Visitor.Model.Item, Visitor.Model.Item.Regra.Atacado,
  Visitor.Model.Item.Regra.Varejo;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(FormatCurr('R$ #,##0.00',
    FItem.SetPrecoUnitario(StrToCurr(Edit1.Text)).Regras.Accept(TabelaPreco)
    .PrecoVenda));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(FormatCurr('R$ #,##0.00',
    FItem.SetPrecoUnitario(StrToCurr(Edit1.Text)).Regras.Accept(TabelaPreco)
    .PrecoPromocao));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FItem := TModelItem.New;
end;

function TForm1.TabelaPreco: iVisitor;
begin
  case ComboBox1.ItemIndex of
    0:
      Result := TModelItemRegraVarejo.New.Visitor;
    1:
      Result := TModelItemRegraAtacado.New.Visitor;
  end;

end;

end.
