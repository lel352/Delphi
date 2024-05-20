object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 392
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object Button1: TButton
      Left = 616
      Top = 5
      Width = 114
      Height = 95
      Align = alRight
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 5
      Top = 5
      Width = 116
      Height = 95
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 735
    Height = 287
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = 129
    ExplicitWidth = 628
    ExplicitHeight = 313
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 735
      Height = 287
      Align = alClient
      DataSource = DataSource1
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      510000009619E0BD0100000018000000020000000000030000005100046E6F6D
      65010049000000010005574944544802000200320009736F6272656E6F6D6501
      004900000001000557494454480200020032000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 144
    object ClientDataSet1nome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object ClientDataSet1sobrenome: TStringField
      FieldName = 'sobrenome'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 408
    Top = 201
  end
end
