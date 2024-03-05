unit calculosicms;

interface

uses
  interfaces,
  Delphiscal.Icms00,
  Delphiscal.Icms00.Intf,
  Delphiscal.Icms20,
  Delphiscal.Icms20.Intf,
  Delphiscal.Icms51,
  Delphiscal.Icms51.Intf;

type
  TCalculosAdapter = class(TInterfacedObject, iCalculosAdapter)
  private
    FICMS00: iIcms00;
    FICMS20: iIcms20;
    FICMS51: iIcms51;
    [weak]
    FElementos: iElementos;
    FValorBaseCalculo: Double;
    FValorICMS: Double;
    FValorICMSDesonerado: Double;
    FValorICMSOperacao: Double;
    FValorDiferimento: Double;

    procedure calculoICMS00;
    procedure calculoICMS20;
    procedure calculoICMS51;
  public
    constructor Create(Elementos: iElementos);
    destructor Destroy; override;
    class function New(Elementos: iElementos): iCalculosAdapter;
    function CST(Value: String): iCalculosAdapter;
    function ValorBaseCalculo(var Value: Double): iCalculosAdapter;
    function ValorICMS(var Value: Double): iCalculosAdapter;
    function ValorICMSDesonerado(var Value: Double): iCalculosAdapter;
    function ValorICMSOperacao(var Value: Double): iCalculosAdapter;
    function ValorDiferimento(var Value: Double): iCalculosAdapter;
  end;

implementation

procedure TCalculosAdapter.calculoICMS00;
begin
  FICMS00 := TICMS00.Create(FElementos.ValorProduto, FElementos.ValorFrete,
    FElementos.ValorSeguro, FElementos.ValorDespesas, FElementos.ValorDesconto,
    FElementos.AliquotaICMS, FElementos.ValorIPI);

  FValorBaseCalculo := FICMS00.BaseIcmsProprio;
  FValorICMS := FICMS00.ValorIcmsProprio;
end;

procedure TCalculosAdapter.calculoICMS20;
begin
  FICMS20 := TICMS20.Create(FElementos.ValorProduto, FElementos.ValorFrete,
    FElementos.ValorSeguro, FElementos.ValorDespesas, FElementos.ValorDesconto,
    FElementos.AliquotaICMS, FElementos.PercentualReducao, FElementos.ValorIPI);

  FValorBaseCalculo := FICMS20.BaseReduzidaIcmsProprio;
  FValorICMS := FICMS20.ValorIcmsProprio;
  FValorICMSDesonerado := FICMS20.ValorICMSDesonerado;
end;

procedure TCalculosAdapter.calculoICMS51;
begin
  FICMS51 := TICMS51.Create(FElementos.ValorProduto, FElementos.ValorFrete,
    FElementos.ValorSeguro, FElementos.ValorDespesas, FElementos.ValorDesconto,
    FElementos.AliquotaICMS, FElementos.PercentualDiferimento,
    FElementos.PercentualReducao, FElementos.ValorIPI);

  FValorBaseCalculo := FICMS51.BaseIcmsProprio;
  FValorICMSOperacao := FICMS51.ValorICMSOperacao;
  FValorDiferimento := FICMS51.ValorIcmsDiferido;
  FValorICMS := FICMS51.ValorIcmsProprio;
end;

constructor TCalculosAdapter.Create(Elementos: iElementos);
begin
  FElementos := Elementos;
end;

function TCalculosAdapter.CST(Value: String): iCalculosAdapter;
var
  lCST: TCST;
begin
  Result := Self;
  case lCST.ToEnum(Value) of
    tp00:
      calculoICMS00;
    tp20:
      calculoICMS20;
    tp51:
      calculoICMS51;
  end;
end;

destructor TCalculosAdapter.Destroy;
begin

  inherited;
end;

class function TCalculosAdapter.New(Elementos: iElementos): iCalculosAdapter;
begin
  Result := Self.Create(Elementos);
end;

function TCalculosAdapter.ValorBaseCalculo(var Value: Double): iCalculosAdapter;
begin
  Result := Self;
  Value := FValorBaseCalculo;
end;

function TCalculosAdapter.ValorDiferimento(var Value: Double): iCalculosAdapter;
begin
  Result := Self;
  Value := FValorDiferimento;
end;

function TCalculosAdapter.ValorICMS(var Value: Double): iCalculosAdapter;
begin
  Result := Self;
  Value := FValorICMS;
end;

function TCalculosAdapter.ValorICMSDesonerado(var Value: Double)
  : iCalculosAdapter;
begin
  Result := Self;
  Value := FValorICMSDesonerado;
end;

function TCalculosAdapter.ValorICMSOperacao(var Value: Double)
  : iCalculosAdapter;
begin
  Result := Self;
  Value := FValorICMSOperacao;
end;

end.
