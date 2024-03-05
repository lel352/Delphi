unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, elementos;

type
  TForm1 = class(TForm)
Panel1: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
    Label1: TLabel;
    lblvBc: TLabel;
    Panel9: TPanel;
    Label2: TLabel;
    lblvICMS: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    lblvBC20: TLabel;
    Panel8: TPanel;
    Label5: TLabel;
    lblvICMS20: TLabel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label7: TLabel;
    lblvBC51: TLabel;
    Panel14: TPanel;
    Label9: TLabel;
    lblvICM51: TLabel;
    Panel16: TPanel;
    Label11: TLabel;
    lblvICMSDeson: TLabel;
    Panel17: TPanel;
    Label13: TLabel;
    lblvICMSOp: TLabel;
    Panel18: TPanel;
    Label15: TLabel;
    lblvICMSDif: TLabel;
    Panel2: TPanel;
    Panel15: TPanel;
    Panel19: TPanel;
    Label4: TLabel;
    edtVrProduto: TEdit;
    Panel20: TPanel;
    Label6: TLabel;
    edtVrFrete: TEdit;
    Panel21: TPanel;
    Label8: TLabel;
    edtVrSeguro: TEdit;
    Panel22: TPanel;
    Label10: TLabel;
    edtVrDespesas: TEdit;
    Panel23: TPanel;
    Label12: TLabel;
    edtVrDesconto: TEdit;
    Panel24: TPanel;
    Label14: TLabel;
    edtVrIPI: TEdit;
    Panel25: TPanel;
    Label16: TLabel;
    edtAliquotaICMS: TEdit;
    Panel26: TPanel;
    Label17: TLabel;
    edtPercentualReducao: TEdit;
    Panel27: TPanel;
    Label18: TLabel;
    edtPercentualDif: TEdit;
    btnCalculoICMS51: TButton;
    btnCalculoICMS20: TButton;
    btnCalculoICMS00: TButton;
    procedure btnCalculoICMS00Click(Sender: TObject);
    procedure btnCalculoICMS20Click(Sender: TObject);
    procedure btnCalculoICMS51Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


uses
  interfaces;

{$R *.dfm}

procedure TForm1.btnCalculoICMS00Click(Sender: TObject);
var
  lVAlorBC, lVAlorICMS: Double;
begin
  TElementos.New
    .ValorProduto(StrToFloatDef(edtVrProduto.Text,0))
    .ValorFrete(StrToFloatDef(edtVrFrete.Text,0))
    .ValorSeguro(StrToFloatDef(edtVrSeguro.Text,0))
    .ValorDespesas(StrToFloatDef(edtVrDespesas.Text,0))
    .ValorDesconto(StrToFloatDef(edtVrDesconto.Text,0))
    .AliquotaICMS(StrToFloatDef(edtAliquotaICMS.Text,0))
    .ValorIpi(StrToFloatDef(edtVrIPI.Text,0))
    .Calcula('00')
    .ValorBaseCalculo(lVAlorBC)
    .ValorICMS(lVAlorICMS);

  lblvBc.Caption := lVAlorBC.ToString;
  lblvICMS.Caption := lVAlorIcms.ToString;
end;

procedure TForm1.btnCalculoICMS20Click(Sender: TObject);
var
  lVAlorBC, lVAlorICMS, lValorDeson: Double;
begin
  TElementos.New
    .ValorProduto(StrToFloatDef(edtVrProduto.Text,0))
    .ValorFrete(StrToFloatDef(edtVrFrete.Text,0))
    .ValorSeguro(StrToFloatDef(edtVrSeguro.Text,0))
    .ValorDespesas(StrToFloatDef(edtVrDespesas.Text,0))
    .ValorDesconto(StrToFloatDef(edtVrDesconto.Text,0))
    .AliquotaICMS(StrToFloatDef(edtAliquotaICMS.Text,0))
    .PercentualReducao(StrToFloatDef(edtPercentualReducao.Text,0))
    .ValorIpi(StrToFloatDef(edtVrIPI.Text,0))
    .Calcula('20')
    .ValorBaseCalculo(lVAlorBC)
    .ValorICMS(lVAlorICMS)
    .ValorICMSDesonerado(lValorDeson);

  lblvBC20.Caption := lVAlorBC.ToString;
  lblvICMS20.Caption := lVAlorICMS.ToString;
  lblvICMSDeson.Caption := lValorDeson.ToString;

end;

procedure TForm1.btnCalculoICMS51Click(Sender: TObject);
var
  lVAlorBC, lVAlorICMS, lValorDeson, lOP: Double;
begin
  TElementos.New
    .ValorProduto(StrToFloatDef(edtVrProduto.Text,0))
    .ValorFrete(StrToFloatDef(edtVrFrete.Text,0))
    .ValorSeguro(StrToFloatDef(edtVrSeguro.Text,0))
    .ValorDespesas(StrToFloatDef(edtVrDespesas.Text,0))
    .ValorDesconto(StrToFloatDef(edtVrDesconto.Text,0))
    .AliquotaICMS(StrToFloatDef(edtAliquotaICMS.Text,0))
    .PercentualDiferimento(StrToFloatDef(edtPercentualDif.Text,0))
    .PercentualReducao(StrToFloatDef(edtPercentualReducao.Text,0))
    .ValorIpi(StrToFloatDef(edtVrIPI.Text,0))
    .Calcula('51')
    .ValorBaseCalculo(lVAlorBC)
    .ValorICMS(lVAlorICMS)
    .ValorICMSOperacao(lOP)
    .ValorDiferimento(lValorDeson);

  lblvBC51.Caption := lVAlorBC.ToString;
  lblvICM51.Caption := lVAlorICMS.ToString;
  lblvICMSOp.Caption := lOP.ToString;
  lblvICMSDif.Caption := lValorDeson.ToString;
end;

end.
