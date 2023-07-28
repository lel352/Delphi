program PrjMVCORMBR;

uses
  Vcl.Forms,
  Controller.Interfaces in 'Controller\Controller.Interfaces.pas',
  Controller.Item in 'Controller\Controller.Item.pas',
  Controller.Observer.Interfaces in 'Controller\Controller.Observer.Interfaces.pas',
  Controller.Observer.Item in 'Controller\Controller.Observer.Item.pas',
  Controller.Vendas in 'Controller\Controller.Vendas.pas',
  frmView.Secundario in 'View\frmView.Secundario.pas' {FrmOutroF},
  frmView.Principal in 'View\frmView.Principal.pas' {Form9},
  Model.Interfaces in 'Model\Model.Interfaces.pas',
  Model.Item in 'Model\Model.Item.pas',
  Model.Venda in 'Model\Model.Venda.pas',
  Model.Conexao in 'Model\Conexao\Model.Conexao.pas' {dmConexao: TDataModule},
  Model.Conexao.Interfaces in 'Model\Conexao\Model.Conexao.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TFrmOutroF, FrmOutroF);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
