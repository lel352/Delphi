program PrjClassRecordHelpers;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
