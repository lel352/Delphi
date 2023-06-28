program PrjMVC;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form9},
  Controller.Interfaces in 'Controller.Interfaces.pas',
  Controller.Vendas in 'Controller.Vendas.pas',
  Controller.Item in 'Controller.Item.pas',
  Model.Venda in 'Model.Venda.pas',
  Model.Item in 'Model.Item.pas',
  Model.Interfaces in 'Model.Interfaces.pas',
  Controller.Observer.Item in 'Controller.Observer.Item.pas',
  Controller.Observer.Interfaces in 'Controller.Observer.Interfaces.pas',
  frmOutro in 'frmOutro.pas' {FrmOutroF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TFrmOutroF, FrmOutroF);
  Application.Run;
end.
