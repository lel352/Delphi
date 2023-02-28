program PrjXMLDOC;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {FPrincipal},
  uFunctions in 'uFunctions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
