program PrjPrincipal;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
