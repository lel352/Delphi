unit frmView.Principal;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Controller.Interfaces, Controller.Observer.Interfaces;

type
  TForm9 = class(TForm, iObserverItem)
    edtIDProduto: TEdit;
    ListBox1: TListBox;
    Button1: TButton;
    btnChamaForm: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnChamaFormClick(Sender: TObject);
  private
    { Private declarations }
    FVenda: IControllerVenda;
    procedure VenderItem;
    function UpdateItem(Value: TRecordItem): iObserverItem;
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Controller.Vendas, frmView.Secundario;

{$R *.dfm}

procedure TForm9.btnChamaFormClick(Sender: TObject);
begin
  FrmOutroF.ChamarForm(FVenda);
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  VenderItem;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  FVenda := TControllerVendas.New;
  FVenda.ObserverItem.Add(Self);
end;

function TForm9.UpdateItem(Value: TRecordItem): iObserverItem;
begin
//  ShowMessage(Value.Descricao);
  ListBox1.Items.Add(Value.Descricao);
end;

procedure TForm9.VenderItem;
begin
  FVenda.Item.codigo(StrToInt(edtIDProduto.Text)).Vender;
end;

end.
