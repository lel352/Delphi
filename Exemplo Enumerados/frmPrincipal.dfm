object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 261
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 72
    Top = 128
    Width = 193
    Height = 25
    Caption = #201' dia da semana.'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 328
    Top = 128
    Width = 161
    Height = 25
    Caption = 'carregar Combo'
    TabOrder = 1
    OnClick = Button2Click
  end
  object cbxDias: TComboBox
    Left = 368
    Top = 40
    Width = 145
    Height = 21
    TabOrder = 2
  end
end
