unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, singleton;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1nome: TStringField;
    ClientDataSet1sobrenome: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FSingleton: TSingletonINI;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses frmTela2;

procedure TForm1.Button1Click(Sender: TObject);
begin
  fTela2.ShowModal;
  ClientDataSet1.append;
  ClientDataSet1nome.AsString := fTela2.edtNome.Text;
  ClientDataSet1sobrenome.AsString := fTela2.edtSobrenome.Text;
  ClientDataSet1.Post;
  FSingleton.Log('Usuario cadastrado: '+ ClientDataSet1nome.AsString );
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  nome: String;
begin
  nome := ClientDataSet1nome.AsString;
  ClientDataSet1.Delete;
  FSingleton.Log('Usuario deletado: ' + nome);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FSingleton.Log('Sistema encerrado');
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  FSingleton := TSingletonINI.Instance;
  FSingleton.Log('Iniciando o Sistema');
end;

end.
