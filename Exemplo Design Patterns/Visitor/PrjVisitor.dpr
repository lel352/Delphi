program PrjVisitor;

uses
  Vcl.Forms,
  Visitor.View.Principal in 'Visitor.View.Principal.pas' {Form1},
  Visitor.Model.Interfaces in 'Visitor.Model.Interfaces.pas',
  Visitor.Model.Item in 'Visitor.Model.Item.pas',
  Visitor.Model.Item.Regra.Varejo in 'Visitor.Model.Item.Regra.Varejo.pas',
  Visitor.Model.Item.Regra.Atacado in 'Visitor.Model.Item.Regra.Atacado.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
