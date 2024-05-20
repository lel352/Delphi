program PrjPooLiveBindings;

uses
  Vcl.Forms,
  frmPrincipal in 'C:\Users\leand\Documents\Embarcadero\Studio\Projects\frmPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
