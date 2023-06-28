object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 605
  ClientWidth = 1013
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edtIDProduto: TEdit
    Left = 40
    Top = 72
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 496
    Top = 32
    Width = 473
    Height = 449
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 206
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object btnChamaForm: TButton
    Left = 56
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Form 2'
    TabOrder = 3
    OnClick = btnChamaFormClick
  end
end
