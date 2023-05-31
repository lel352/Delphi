unit uProduct;

interface

uses Generics.Collections;

type
  IProduct = Interface
    ['{9A8DE729-0543-444A-91DE-C063D0AB72DE}']
    function getID: Integer;
    function getName: String;
    function getPriece: Double;

    procedure SetID(const Value: Integer);
    procedure SetName(const Value: String);
    procedure SetPriece(const Value: Double);

    property ID: Integer read getID write SetID;
    property Name: String read getName write SetName;
    property Priece: Double read getPriece write SetPriece;

  End;

  TProduct = class(TInterfacedObject, IProduct)
  private
    FID: Integer;
    FName: String;
    FPriece: Double;
  protected
    function getID: Integer;
    function getName: String;
    function getPriece: Double;

    procedure SetID(const Value: Integer);
    procedure SetName(const Value: String);
    procedure SetPriece(const Value: Double);
  end;

  TProductProvider = Class
  private
    FProductList: TList<TProduct>;
    FCurrent: Integer;
    class var FProductProvider: TProductProvider;

    constructor Create;
  public
    destructor Destroy; override;
    
    class function Instance: TProductProvider;
    
    procedure Add(Value: TProduct);
    procedure Delete(Value: TProduct);
    procedure Update(Value: TProduct);

  End;

implementation

{ TProduct }

function TProduct.getID: Integer;
begin
  result := Self.FID;
end;

function TProduct.getName: String;
begin
  result := Self.FName;
end;

function TProduct.getPriece: Double;
begin
  result := Self.FPriece;
end;

procedure TProduct.SetID(const Value: Integer);
begin
  Self.FID := Value;
end;

procedure TProduct.SetName(const Value: String);
begin
  Self.FName := Value;
end;

procedure TProduct.SetPriece(const Value: Double);
begin
  Self.FPriece := Value;
end;

{ TProdructProvider }

procedure TProductProvider.Add(Value: TProduct);
begin

end;

constructor TProductProvider.Create;
begin
  inherited Create;

  Self.FProductList := TList<TProduct>.Create;
  Self.FCurrent := -1;
end;

procedure TProductProvider.Delete(Value: TProduct);
begin

end;

destructor TProductProvider.Destroy;
begin
  with FProductList.GetEnumerator do
    while MoveNext do Current.Free;

  FProductList.Free;
  FProductProvider := nil;
  inherited;
end;

function TProductProvider.Instance: TProductProvider;
begin
  if FProductProvider = nil then FProductProvider := TProductProvider.Create;

  result := FProductProvider;
end;

procedure TProductProvider.Update(Value: TProduct);
begin

end;

end.
