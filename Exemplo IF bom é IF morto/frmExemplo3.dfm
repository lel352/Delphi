object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 148
  ClientWidth = 274
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
      'Entrada'
      'Saida'
      'Devolu'#231#227'o')
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
