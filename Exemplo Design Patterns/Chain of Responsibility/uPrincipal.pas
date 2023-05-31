unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPrincipal = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

uses UPartternInterface, UPatternCompra, uPatternDiretor, UPatternPresidente, UPatternVicePresidente;

{$R *.dfm}

procedure TPrincipal.Button1Click(Sender: TObject);
var
  lDiretor: IAprovar;
  lVicePresidente: IAprovar;
  lPresidente: IAprovar;
  lComprar: TComprar;
begin
  lDiretor := TDiretor.Create;
  lVicePresidente := TVicePresidente.Create;
  lPresidente := TPresidente.Create;
  try
  lDiretor.SetSucessor(lVicePresidente);
  lVicePresidente.SetSucessor(lPresidente);

  lComprar := TComprar.Create(2034, 350.00,'Suprimentos');
  Memo1.Lines.Add(lDiretor.ProcessaRequest(lComprar));
  lComprar.Free;

  lComprar := TComprar.Create(2035, 32529.10,'Projeto X');
  Memo1.Lines.Add(lDiretor.ProcessaRequest(lComprar));
  lComprar.Free;

  lComprar := TComprar.Create(2036, 999999.00,'Projeto final');
  Memo1.Lines.Add(lDiretor.ProcessaRequest(lComprar));
  lComprar.Free;

  lComprar := TComprar.Create(2037, 324210001.00,'Projeto final');
  Memo1.Lines.Add(lDiretor.ProcessaRequest(lComprar));
  finally
  lComprar.Free;
  end;
end;

end.
