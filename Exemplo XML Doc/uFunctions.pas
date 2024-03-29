unit uFunctions;

interface

type
  Tfuncoes = class
  public
    /// <summary>
    ///   A Fun��o <c>IsEmpty</c> serve para verificar se um valor passado como par�metro est� vazio.
    ///  Est� sendo utilizada em: <see cref='FPrincipal'/>
    ///  <para>
    ///   Veja o Exemplo abaixo de como utilizar a fun��o:
    ///  <code>
    ///     <para>if Tfuncoes.IsEmpty(edtValor) then</para>
    ///     <para>   ShowMessage('O edit est� vazio')</para>
    ///     <para>else</para>
    ///     <para>   ShowMessage('O edit possuir algum valor')</para>
    ///  </code>
    ///  </para>
    /// </summary>
    /// <param name="AValue">
    ///   Refere-se a string a qual deseja-se  verificar se possui alguma informa��o.
    /// </param>
    /// <returns>
    ///   Retorna <c>True</c> se a string passada como par�metro estiver vazia.
    ///   <para> Retorna <c>False</c> se a string passada como par�metro n�o se estiver vazia </para>
    /// </returns>
    /// <exception cref='EExceptionTeste'>
    ///  Essa exe��o foi gerada de forma proposital.
    /// </exception>
    /// <permission cref='Administrador'>
    ///   Essa fun��o somente pode ser utilizada por um ADM.
    /// </permission>
    /// <remarks>
    ///  J� existe uma fun��o nativa no delphi que faz esse mesmo recurso.
    /// </remarks>
    class function IsEmpty(const AValue: String):Boolean;
  end;

implementation

{ Tfuncoes }

function Tfuncoes.IsEmpty(const AValue: String): Boolean;
begin

end;

end.
