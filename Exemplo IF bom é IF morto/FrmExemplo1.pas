unit FrmExemplo1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edtComIF: TEdit;
    edtSemIF: TEdit;
    Button1: TButton;
    Button2: TButton;
    lblMensagemComIF: TLabel;
    lblMensagemSemIF: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses frmExemplo2, frmExemplo3, frmExemplo4, frmExemplo5;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 lblMensagemComIF.Caption := edtComIF.Text;
 if edtComIF.Text <> 'Não' then
  lblMensagemComIF.Enabled := True
 else
  lblMensagemComIF.Enabled := False
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 lblMensagemSemIF.Caption := edtSemIF.Text;
 lblMensagemSemIF.Enabled := (edtSemIF.Text <> 'Não');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form3.showModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form3.showModal;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form4.showModal;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Form5.showModal;
end;

end.
