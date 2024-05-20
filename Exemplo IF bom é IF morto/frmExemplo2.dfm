object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 278
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ComboBox1: TComboBox
    Left = 56
    Top = 40
    Width = 529
    Height = 23
    TabOrder = 0
    Text = 'ComboBox1'
    Items.Strings = (
      'Valor 1'
      'Valor 2'
      'Valor 3'
      'Valor 4')
  end
  object Button1: TButton
    Left = 56
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Com IF'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Enum Case'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 352
    Top = 80
    Width = 161
    Height = 25
    Caption = 'Array Enum Case'
    TabOrder = 3
    OnClick = Button3Click
  end
end
