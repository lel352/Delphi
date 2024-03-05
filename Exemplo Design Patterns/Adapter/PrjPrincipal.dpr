program PrjPrincipal;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  interfaces in 'interfaces.pas',
  calculosicms in 'calculosicms.pas',
  elementos in 'elementos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
