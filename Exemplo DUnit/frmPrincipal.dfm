object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  ClientHeight = 192
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNumero1: TLabel
    Left = 8
    Top = 35
    Width = 50
    Height = 13
    Caption = 'Numero 1:'
  end
  object lblNumero2: TLabel
    Left = 8
    Top = 75
    Width = 50
    Height = 13
    Caption = 'Numero 2:'
  end
  object Label3: TLabel
    Left = 8
    Top = 155
    Width = 52
    Height = 13
    Caption = 'Resultado:'
  end
  object edtNumero1: TEdit
    Left = 72
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNumero2: TEdit
    Left = 72
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnSoma: TButton
    Left = 8
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Soma'
    TabOrder = 2
    OnClick = btnSomaClick
  end
  object btnSubtrair: TButton
    Left = 89
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 3
    OnClick = btnSubtrairClick
  end
  object btnDividir: TButton
    Left = 170
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 4
    OnClick = btnDividirClick
  end
  object btnMultiplicar: TButton
    Left = 251
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 5
    OnClick = btnMultiplicarClick
  end
  object edtResultado: TEdit
    Left = 72
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
