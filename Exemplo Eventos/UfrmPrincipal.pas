unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExibeLog1(Log: String);
    procedure ExibeLog2(Log: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UForm2;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.FLog := ExibeLog1;
  Form2.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Form2.FLog := ExibeLog2;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form2.FLog := ExibeLog1;
end;

procedure TForm1.ExibeLog1(Log: String);
begin
  Memo1.Lines.Add(Log);
end;

procedure TForm1.ExibeLog2(Log: String);
begin
  Memo2.Lines.Add(Log);
end;

end.
