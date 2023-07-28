unit Model.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, Model.Conexao.Interfaces,
  ormbr.factory.interfaces,
  ormbr.factory.firedac,
  ormbr.dml.generator.Firebird;

type
  TdmConexao = class(TDataModule, iModelConexao)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FConn: IDBConnection;

    function Conn: IDBConnection;
  public
    { Public declarations }
    class function New: iModelConexao;
  end;

var
  dmConexao: TdmConexao;

implementation

uses
  ormbr.types.database;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TdmConexao.Conn: IDBConnection;
begin
  Result := FCoon;
end;

procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  FConn := TFactoryFireDAC.Create(FDConnection1, dnFirebird);
end;

class function TdmConexao.New: iModelConexao;
begin
  result := Self.Create(nil);
end;

end.
