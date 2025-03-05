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
  OnCreate = FormCreate
  TextHeight = 15
  object Button1: TButton
    Left = 104
    Top = 93
    Width = 129
    Height = 25
    Caption = 'pre'#231'o normal'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 124
    Width = 129
    Height = 25
    Caption = 'pre'#231'o promo'#231#227'o'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 24
    Width = 145
    Height = 23
    ItemIndex = 0
    TabOrder = 2
    Text = 'Varejo'
    Items.Strings = (
      'Varejo'
      'Atacado')
  end
  object Edit1: TEdit
    Left = 287
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 3
    Text = '10'
  end
end
