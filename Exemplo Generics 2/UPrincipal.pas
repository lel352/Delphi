unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, uProduct;

type
  Toperation = (opInsert, opUpdate, opNone);

  TForm9 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ImageList1: TImageList;
    pnlControls: TPanel;
    edtId: TLabeledEdit;
    edtName: TLabeledEdit;
    edtPrice: TLabeledEdit;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
    FOperation: Toperation;

    function Product: IProduct;

    procedure doInsert;
    procedure doUpdate;
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.doInsert;
begin
  TProductProvider.Instance.Add(Product);
end;

procedure TForm9.doUpdate;
begin
  TProductProvider.Instance.Update(Product);
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  Self.FOperation := opNone;
end;

function TForm9.Product: IProduct;
begin
  result := TProduct.Create;
  result.ID := StrToInt(edtId.Text);
  result.Name := edtName.Text;
  result.ID := StrTofloat(edtPrice.Text);
end;

procedure TForm9.ToolButton1Click(Sender: TObject);
begin
  pnlControls.Enabled := True;

  edtId.SetFocus;

  edtId.Clear;
  edtName.Clear;
  edtPrice.Clear;

  FOperation := opInsert;

end;

procedure TForm9.ToolButton2Click(Sender: TObject);
begin
  pnlControls.Enabled := True;

  edtId.SetFocus;

  edtId.Clear;
  edtName.Clear;
  edtPrice.Clear;
end;

procedure TForm9.ToolButton3Click(Sender: TObject);
begin
  if MessageDlg('Confirma Deletar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then begin
    TProductProvider.Instance.Delete(Product);
  end;
end;

procedure TForm9.ToolButton5Click(Sender: TObject);
begin
  case Self.FOperation of
    opInsert: doInsert;
    opUpdate: doUpdate;
  end;
end;

end.
