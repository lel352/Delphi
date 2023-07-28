unit Model.Conexao.Interfaces;

interface

uses
  ormbr.factory.interfaces;

type
  iModelConexao = interface
    ['{721AE1E2-11CB-4C40-92D0-F15B3FEB95A9}']
    function Conn: IDBConnection;
  end;

implementation

end.
