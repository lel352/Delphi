unit interfaces;

interface


uses
  System.TypInfo;

type
  TCST = (tp00, tp20, tp51);

  TCSTHelper = record helper for TCST
    function ToEnum(Value: String): TCST;
  end;

  ICalculosAdapter = Interface
    ['{BA3CABF8-0109-437C-A26A-0715CF1F5327}']
    function CST(Value: String): ICalculosAdapter;
    function ValorBaseCalculo(var Value: Double): iCalculosAdapter;
    function ValorICMS(var Value: Double): iCalculosAdapter;
    function ValorICMSDesonerado(var Value: Double): iCalculosAdapter;
    function ValorICMSOperacao(var Value: Double): iCalculosAdapter;
    function ValorDiferimento(var Value: Double): iCalculosAdapter;
  End;

  iElementos = interface
    function ValorProduto(Value: Double): iElementos; overload;
    function ValorProduto: Double; overload;
    function ValorFrete(Value: Double): iElementos; overload;
    function ValorFrete: Double; overload;
    function ValorSeguro(Value: Double): iElementos; overload;
    function ValorSeguro: Double; overload;
    function ValorDespesas(Value: Double): iElementos; overload;
    function ValorDespesas: Double; overload;
    function ValorDesconto(Value: Double): iElementos; overload;
    function ValorDesconto: Double; overload;
    function ValorIpi(Value: Double): iElementos; overload;
    function ValorIPI: Double; overload;
    function AliquotaICMS(Value: Double): iElementos; overload;
    function AliquotaICMS: Double; overload;
    function PercentualReducao(Value: Double): iElementos; overload;
    function PercentualReducao: Double; overload;
    function PercentualDiferimento(Value: Double): iElementos; overload;
    function PercentualDiferimento: Double; overload;
    function Calcula(Value: String): iCalculosAdapter;
  end;


implementation

{ TCSTHelper }

function TCSTHelper.ToEnum(Value: String): TCST;
begin
  Result := TCST(GetEnumValue(TypeInfo(TCST), 'tp'+Value));
end;

end.
