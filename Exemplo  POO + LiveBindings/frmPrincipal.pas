unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.Grids, System.Generics.Collections,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Controls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Bind.Navigator, Data.Bind.Grid, Data.Bind.GenData;

type
  TPessoa = class
  private
    FIdade: Integer;
    FNome: String;
    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);
    public
     constructor Create(ANome:String; AIdade: Integer);
     property Nome: String read FNome write SetNome;
     property Idade: Integer read FIdade write SetIdade;
  end;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    lblNome: TLabel;
    lblIdade: TLabel;
    edtNome: TEdit;
    edtIdade: TEdit;
    AdapterBindSource1: TAdapterBindSource;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceAdapterBindSource1: TLinkGridToDataSource;
    NavigatorAdapterBindSource1: TBindNavigator;
    DataGeneratorAdapter1: TDataGeneratorAdapter;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure AdapterBindSource1CreateAdapter(Sender: TObject;
      var ABindSourceAdapter: TBindSourceAdapter);
  private
    { Private declarations }
  public
    { Public declarations }
    function CarregarLista: TList<TPessoa>;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TPessoa }

constructor TPessoa.Create(ANome: String; AIdade: Integer);
begin
 FNome := ANome;
 FIDade := AIdade;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TForm1 }

procedure TForm1.AdapterBindSource1CreateAdapter(Sender: TObject;
  var ABindSourceAdapter: TBindSourceAdapter);
begin
  ABindSourceAdapter := TListBindSourceAdapter<TPessoa>.Create(Self, CarregarLista);
end;

function TForm1.CarregarLista: TList<TPessoa>;
begin
  result := TList<TPessoa>.Create;

  for var I := 1 to 10 do begin
    Result.Add(TPessoa.Create('Usuario' + I.ToString, 10+I))
  end;

end;


end.
