unit uGenerics;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TValue = Class
  private
    Fnome: String;
  public
    property Name: String read Fnome write Fnome;
  End;

  TGenericValue<T> = class(TValue)
  private
    FValue: T;
  public
    property Value: T read FValue write FValue;
  End;

  TFrmPrincipal = class(TForm)
    rbtString: TRadioButton;
    rbtInteger: TRadioButton;
    rbtDate: TRadioButton;
    edtValue: TEdit;
    btnAdd: TButton;
    ListBox1: TListBox;
    procedure btnAddClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btnAddClick(Sender: TObject);
var
  v: TValue;
begin
  if rbtString.Checked then begin
    v := TGenericValue<String>.Create;
    v.Name := 'rbtString';
    TGenericValue<String>(v).Value := edtValue.Text;
  end
  else if rbtInteger.Checked then begin
    v := TGenericValue<Integer>.Create;
    v.Name := 'rbtInteger';
    TGenericValue<Integer>(v).Value := StrToInt(edtValue.Text);
  end
  else begin
    v := TGenericValue<TDateTime>.Create;
    v.Name := 'rbtDate';
    TGenericValue<TDateTime>(v).Value := StrToDate(edtValue.Text);
  end;

  ListBox1.Items.AddObject(v.Name,v);
  edtValue.clear;
end;

procedure TFrmPrincipal.ListBox1Click(Sender: TObject);
var
  v: TValue;
begin
  if ListBox1.ItemIndex < 0 then exit;

  v := (ListBox1.Items.Objects[ListBox1.ItemIndex] as TValue);

  ( FindComponent(v.Name) as TRadioButton ).Checked := True;

  if v is TGenericValue<String> then
      edtValue.Text := (v as TGenericValue<String> ).Value
  else if v is TGenericValue<Integer> then
      edtValue.Text := IntToStr((v as TGenericValue<Integer> ).Value)
  else
      edtValue.Text := DateToStr((v as TGenericValue<TDateTime>).Value);
end;

end.
