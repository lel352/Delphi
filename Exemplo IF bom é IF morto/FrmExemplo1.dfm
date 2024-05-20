object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 430
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 585
    Height = 105
    Caption = 'Com IF'
    TabOrder = 0
    object lblMensagemComIF: TLabel
      Left = 216
      Top = 72
      Width = 107
      Height = 15
      Caption = 'lblMensagemComIF'
    end
    object edtComIF: TEdit
      Left = 24
      Top = 31
      Width = 433
      Height = 23
      TabOrder = 0
    end
    object Button1: TButton
      Left = 488
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 144
    Width = 585
    Height = 105
    Caption = 'Sem IF'
    TabOrder = 1
    object lblMensagemSemIF: TLabel
      Left = 216
      Top = 72
      Width = 104
      Height = 15
      Caption = 'lblMensagemSemIF'
    end
    object edtSemIF: TEdit
      Left = 24
      Top = 32
      Width = 433
      Height = 23
      TabOrder = 0
    end
    object Button2: TButton
      Left = 488
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Button3: TButton
    Left = 80
    Top = 368
    Width = 75
    Height = 25
    Caption = 'form 2'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 200
    Top = 368
    Width = 75
    Height = 25
    Caption = 'form3'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 296
    Top = 368
    Width = 75
    Height = 25
    Caption = 'form4'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 406
    Top = 368
    Width = 75
    Height = 25
    Caption = 'form5'
    TabOrder = 5
    OnClick = Button6Click
  end
end
