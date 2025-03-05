program PrjState;

uses
  Vcl.Forms,
  State.View.Principal in 'State.View.Principal.pas' {Form1},
  State.Model.Interfacepas in 'State.Model.Interfacepas.pas',
  State.Model.Item in 'State.Model.Item.pas',
  State.Model.Item.Ativo in 'State.Model.Item.Ativo.pas',
  State.Model.Item.Vendido in 'State.Model.Item.Vendido.pas',
  State.Model.Item.Inativo in 'State.Model.Item.Inativo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
