unit eNota.Controller.NotaFiscal.Interfaces;

interface

Type
  iCommand = Interface
    ['{7E6464AE-125C-48E7-9932-D27FCC88F27D}']
    function Execute: iCommand;
  End;

  iInvoker = Interface
    ['{E4B7459B-316C-4D67-B7CC-27724B0E7550}']
    function add(Value: iCommand): iInvoker;
    function Execute: iInvoker;
  End;

  iNotaFiscal = Interface
    ['{44C9EF9F-AD1E-4F4F-99D9-46E3AF09986F}']
    function Criar: iNotaFiscal;
    function Validar: iNotaFiscal;
    function Enviar: iNotaFiscal;
    function Gravar: iNotaFiscal;
    function Email: iNotaFiscal;
    function ImportarPedido(Value: Integer): iNotaFiscal;
  End;

  iNotaFiscalView = Interface
    ['{64E46056-5393-4BD1-87FB-C12CDDD164B9}']
    function EnviarNotaSefaz: iNotaFiscal;
    function EnviarNotaSefazSemEmail: iNotaFiscal;
    function GerarNotaPedido(IDPedido: Integer): iNotaFiscal;
  End;

implementation

end.
