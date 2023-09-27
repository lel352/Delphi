object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblMensagem: TLabel
    Left = 16
    Top = 67
    Width = 72
    Height = 15
    Caption = 'lblMensagem'
  end
  object prgBar: TProgressBar
    Left = 16
    Top = 88
    Width = 585
    Height = 21
    TabOrder = 0
  end
  object memo: TMemo
    Left = 16
    Top = 128
    Width = 585
    Height = 241
    Lines.Strings = (
      'memo')
    TabOrder = 1
  end
  object btnIniciarEvento: TButton
    Left = 16
    Top = 384
    Width = 121
    Height = 25
    Caption = 'Iniciar Evento'
    TabOrder = 2
    OnClick = btnIniciarEventoClick
  end
end
