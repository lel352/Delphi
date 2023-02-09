unit untPessoa;

interface

uses REST.JSon.Types;

type
  TPessoa = class
  private
    [JSONMarshalledAttribute(False)] // Remove FAtiva do JSON
    FAtiva: Boolean;
    FID: Integer;
    [JSONNameAttribute('codigo')] // muda o nome do campo ID para codigo no JSON
    FNome: string;
    procedure SetAtiva(const Value: Boolean);
    procedure SetID(const Value: Integer);
    procedure SetNome(const Value: string);
  public
    property ID: Integer read FID write SetID;
    property Nome: string read FNome write SetNome;
    property Ativa: Boolean read FAtiva write SetAtiva;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetAtiva(const Value: Boolean);
begin
  FAtiva := Value;
end;

procedure TPessoa.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.
