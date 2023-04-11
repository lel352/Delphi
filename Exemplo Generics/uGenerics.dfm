object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 316
  ClientWidth = 456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rbtString: TRadioButton
    Left = 248
    Top = 34
    Width = 113
    Height = 17
    Caption = 'String'
    Checked = True
    TabOrder = 0
    TabStop = True
  end
  object rbtInteger: TRadioButton
    Left = 248
    Top = 80
    Width = 113
    Height = 17
    Caption = 'Integer'
    TabOrder = 1
  end
  object rbtDate: TRadioButton
    Left = 248
    Top = 128
    Width = 113
    Height = 17
    Caption = 'Date'
    TabOrder = 2
  end
  object edtValue: TEdit
    Left = 248
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnAdd: TButton
    Left = 248
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 4
    OnClick = btnAddClick
  end
  object ListBox1: TListBox
    Left = 16
    Top = 24
    Width = 185
    Height = 257
    ItemHeight = 13
    TabOrder = 5
    OnClick = ListBox1Click
  end
end
