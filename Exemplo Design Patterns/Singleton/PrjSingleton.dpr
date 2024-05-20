program PrjSingleton;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  frmTela2 in 'frmTela2.pas' {fTela2},
  singleton in 'singleton.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfTela2, fTela2);
  Application.Run;
end.
