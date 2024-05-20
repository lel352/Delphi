object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 228
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object ComboBox1: TComboBox
    Left = 48
    Top = 24
    Width = 177
    Height = 23
    TabOrder = 0
    Text = 'ComboBox1'
    Items.Strings = (
      'Cachorro'
      'Galinha'
      'Vaca')
  end
  object Button1: TButton
    Left = 48
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Com IF'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 150
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Sem IF'
    TabOrder = 2
    OnClick = Button2Click
  end
end
