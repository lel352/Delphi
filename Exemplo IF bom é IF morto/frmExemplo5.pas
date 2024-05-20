unit frmExemplo5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;


Type
  TAnimal = class
    function barulho: String; virtual; abstract;
  end;

  TCachorro = class(TAnimal)
    function barulho: String; override;
  end;

  TGato = class(TAnimal)
    function barulho: String; override;
  end;

  TVaca = class(TAnimal)
    function barulho: String; override;
  end;


type
  TForm5 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  if ComboBox1.Text = 'Cachorro' then
    ShowMessage('Au Au')
  else if ComboBox1.Text = 'Gato' then
    ShowMessage('Miau Miau')
  else if ComboBox1.Text = 'Vaca' then
    ShowMessage('Muuuu')
  else  ShowMessage('Sem animal')
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  ShowMessage(
    TAnimal(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).barulho
  );
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.clear;
  ComboBox1.Items.AddObject('Cachorro', TObject(TCachorro.create));
  ComboBox1.Items.AddObject('Gato', TObject(TGato.create));
  ComboBox1.Items.AddObject('Vaca', TObject(TVaca.create));
  ComboBox1.ItemIndex := 0;
end;

{ TCachorro }

function TCachorro.barulho: String;
begin
  result := 'Au Au';
end;

{ TGato }

function TGato.barulho: String;
begin
  result := 'Miu Miu';
end;

{ TVaca }

function TVaca.barulho: String;
begin
    result := 'Muuuu';
end;

end.
