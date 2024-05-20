unit frmExemplo2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  eValores = (tpValor1, tpValor2, tpValor3, tpValor4);

  TForm2 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  if ComboBox1.Text = 'Valor 1' then
    ShowMessage('Exibindo valor 1')
  else if ComboBox1.Text = 'Valor 2' then
    ShowMessage('Exibindo valor 2')
  else if ComboBox1.Text = 'Valor 3' then
    ShowMessage('Exibindo valor 3')
  else if ComboBox1.Text = 'Valor 4' then
    ShowMessage('Exibindo valor 4')
  else
    ShowMessage('Nenhum Valor Selecionado');

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  case eValores(ComboBox1.ItemIndex) of
    tpValor1:
      ShowMessage('Exibindo valor 1');
    tpValor2:
      ShowMessage('Exibindo valor 2');
    tpValor3:
      ShowMessage('Exibindo valor 3');
    tpValor4:
      ShowMessage('Exibindo valor 4');
  else

    ShowMessage('Nenhum Valor Selecionado');
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);
const
  tabela : array[0..3] of string = ('Valor 1', 'Valor 2','Valor 3', 'Valor 4');
begin
  case eValores(AnsiIndexStr(ComboBox1.Text, tabela)) of
    tpValor1:
      ShowMessage('Exibindo valor 1');
    tpValor2:
      ShowMessage('Exibindo valor 2');
    tpValor3:
      ShowMessage('Exibindo valor 3');
    tpValor4:
      ShowMessage('Exibindo valor 4');
  else
    ShowMessage('Nenhum Valor Selecionado');
  end;
end;

end.
