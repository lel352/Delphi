object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 621
  ClientWidth = 1046
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 392
    Width = 1046
    Height = 229
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQUOTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAALTERACAO'
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 120
    Top = 216
    Width = 657
    Height = 23
    KeyField = 'ID'
    ListField = 'DESCRICAO;CODIGO'
    ListSource = DataSource1
    TabOrder = 1
  end
  object Conection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Conection')
    Connected = True
    LoginPrompt = False
    Left = 883
    Top = 44
  end
  object ProdutoTable: TFDQuery
    Active = True
    Connection = Conection
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 771
    Top = 124
    object ProdutoTableID: TLargeintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutoTableDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object ProdutoTableVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object ProdutoTableNCM: TIntegerField
      FieldName = 'NCM'
      Origin = 'NCM'
    end
    object ProdutoTableSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object ProdutoTableCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object ProdutoTableALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Origin = 'ALIQUOTA'
    end
    object ProdutoTableST: TIntegerField
      FieldName = 'ST'
      Origin = 'ST'
    end
    object ProdutoTableDATAALTERACAO: TDateField
      FieldName = 'DATAALTERACAO'
      Origin = 'DATAALTERACAO'
    end
  end
  object DataSource1: TDataSource
    DataSet = ProdutoTable
    Left = 896
    Top = 128
  end
end
