program PrjEnumeradps;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form9},
  uEnum in 'uEnum.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
