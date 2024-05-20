unit frmTela2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, singleton;

type
  TfTela2 = class(TForm)
    lblNome: TLabel;
    edtNome: TEdit;
    edtSobrenome: TEdit;
    lblSobreNome: TLabel;
    btnSalvar: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FSingleton: TSingletonINI;
  public
    { Public declarations }
  end;

var
  fTela2: TfTela2;

implementation

{$R *.dfm}

procedure TfTela2.btnSalvarClick(Sender: TObject);
begin
  self.Close;
  FSingleton.Log('Usuario salvo: '+edtNome.Text + ' '+ edtSobrenome.Text);
end;

procedure TfTela2.FormActivate(Sender: TObject);
begin
  edtNome.Clear;
  edtSobrenome.Clear;
end;

procedure TfTela2.FormShow(Sender: TObject);
begin
  FSingleton := TSingletonINI.Instance;
end;

end.
