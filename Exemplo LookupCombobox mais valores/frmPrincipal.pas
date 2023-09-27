unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    Conection: TFDConnection;
    ProdutoTable: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    ProdutoTableID: TLargeintField;
    ProdutoTableDESCRICAO: TStringField;
    ProdutoTableVALOR: TFloatField;
    ProdutoTableNCM: TIntegerField;
    ProdutoTableSTATUS: TIntegerField;
    ProdutoTableCODIGO: TIntegerField;
    ProdutoTableALIQUOTA: TFloatField;
    ProdutoTableST: TIntegerField;
    ProdutoTableDATAALTERACAO: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
