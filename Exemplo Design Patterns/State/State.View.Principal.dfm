object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 535
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
    Left = 72
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Ativar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Vendido'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 328
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Inativo'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 88
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Vender'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 216
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 328
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Desconto'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 456
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Devolver'
    TabOrder = 6
    OnClick = Button7Click
  end
end
