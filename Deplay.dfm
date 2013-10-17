object Deshi: TDeshi
  Left = 325
  Top = 317
  Width = 408
  Height = 223
  BorderStyle = bsSizeToolWin
  Caption = #1044#1077#1096#1092#1088#1086#1074#1072#1090#1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 110
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 185
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 32
      Width = 63
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1076
    end
    object bbSh: TBitBtn
      Left = 32
      Top = 112
      Width = 353
      Height = 25
      Caption = #1044#1077#1096#1080#1092#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = bbShClick
      Kind = bkOK
    end
    object SpinEdit1: TSpinEdit
      Left = 136
      Top = 24
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
  end
end
