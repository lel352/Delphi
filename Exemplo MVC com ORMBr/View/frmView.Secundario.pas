unit frmView.Secundario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Controller.Observer.Interfaces, Controller.Interfaces;

type
  TFrmOutroF = class(TForm, iObserverItem)
    ListBox1: TListBox;
  private
    FVenda: IControllerVenda;
    { Private declarations }
    function UpdateItem(Value: TRecordItem): iObserverItem;
  public
    { Public declarations }
    procedure chamarForm(Parent: IControllerVenda);
  end;

var
  FrmOutroF: TFrmOutroF;

implementation

{$R *.dfm}
{ TFrmOutroF }

procedure TFrmOutroF.chamarForm(Parent: IControllerVenda);
begin
  FVenda := Parent;
  FVenda.ObserverItem.Add(Self);
  Self.Show;
end;

function TFrmOutroF.UpdateItem(Value: TRecordItem): iObserverItem;
begin
  ListBox1.Items.Add(Value.Descricao);
end;

end.
