object dmConexao: TdmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 561
  Width = 831
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Leandro\MundoProjeto\Delphi\Delphi\Exemplo MVC com O' +
        'RMBr\banco\BANCO1.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 128
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 248
    Top = 96
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 392
    Top = 104
  end
end
