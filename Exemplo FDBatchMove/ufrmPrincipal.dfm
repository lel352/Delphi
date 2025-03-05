object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 360
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\Documentos\Programa'#231#227'o\Delphi\Delphi\Exemplo MVC com' +
        ' ORMBr\banco\BANCO1.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 152
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 272
    Top = 24
  end
  object FDConnection2: TFDConnection
    Params.Strings = (
      'Database=migracao'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 40
    Top = 328
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 184
    Top = 336
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection2
    Left = 432
    Top = 112
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveSQLReader1
    Writer = FDBatchMoveSQLWriter1
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 40
    Top = 160
  end
  object FDBatchMoveSQLReader1: TFDBatchMoveSQLReader
    Connection = FDConnection1
    Left = 32
    Top = 88
  end
  object FDBatchMoveSQLWriter1: TFDBatchMoveSQLWriter
    Connection = FDConnection2
    Left = 32
    Top = 240
  end
end
