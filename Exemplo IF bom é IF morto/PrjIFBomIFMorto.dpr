program PrjIFBomIFMorto;

uses
  Vcl.Forms,
  FrmExemplo1 in 'FrmExemplo1.pas' {Form1},
  frmExemplo2 in 'frmExemplo2.pas' {Form2},
  frmExemplo3 in 'frmExemplo3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
