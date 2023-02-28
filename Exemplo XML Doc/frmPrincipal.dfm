object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 116
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblValor: TLabel
    Left = 24
    Top = 32
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object edtValor: TEdit
    Left = 58
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnIsEmpty: TButton
    Left = 200
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Is Empty'
    TabOrder = 1
    OnClick = btnIsEmptyClick
  end
end
