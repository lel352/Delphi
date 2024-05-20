object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 327
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblNome: TLabel
    Left = 24
    Top = 48
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object lblIdade: TLabel
    Left = 384
    Top = 48
    Width = 32
    Height = 15
    Caption = 'Idade:'
  end
  object StringGrid1: TStringGrid
    Tag = 2
    Left = 8
    Top = 88
    Width = 581
    Height = 185
    ColCount = 2
    FixedCols = 0
    RowCount = 201
    TabOrder = 0
    ColWidths = (
      64
      64)
    RowHeights = (
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24)
    ColAligments = (
      0
      1)
  end
  object edtNome: TEdit
    Left = 66
    Top = 45
    Width = 255
    Height = 23
    TabOrder = 1
    Text = 'False'
  end
  object edtIdade: TEdit
    Left = 448
    Top = 45
    Width = 121
    Height = 23
    TabOrder = 2
    Text = '4290283019'
  end
  object NavigatorAdapterBindSource1: TBindNavigator
    Left = 8
    Top = 279
    Width = 580
    Height = 25
    DataSource = AdapterBindSource1
    Orientation = orHorizontal
    TabOrder = 3
  end
  object AdapterBindSource1: TAdapterBindSource
    AutoActivate = True
    OnCreateAdapter = AdapterBindSource1CreateAdapter
    Adapter = DataGeneratorAdapter1
    ScopeMappings = <>
    Left = 512
    Top = 136
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 508
    Top = 69
    object LinkGridToDataSourceAdapterBindSource1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = AdapterBindSource1
      GridControl = StringGrid1
      Columns = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = AdapterBindSource1
      FieldName = 'Nome'
      Control = edtNome
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = AdapterBindSource1
      FieldName = 'Idade'
      Control = edtIdade
      Track = True
    end
  end
  object DataGeneratorAdapter1: TDataGeneratorAdapter
    FieldDefs = <
      item
        Name = 'Nome'
        Generator = 'Booleans'
        ReadOnly = False
      end
      item
        Name = 'Idade'
        FieldType = ftUInteger
        Generator = 'AlphaColors'
        ReadOnly = False
      end>
    Active = True
    AutoPost = False
    Options = [loptAllowInsert, loptAllowDelete, loptAllowModify]
    Left = 512
    Top = 208
  end
end
