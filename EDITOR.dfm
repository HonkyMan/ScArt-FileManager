object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1092#1072#1081#1083#1086#1074
  ClientHeight = 372
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 347
    Width = 687
    Height = 25
    Align = alBottom
    TabOrder = 0
    object StatusBar1: TStatusBar
      Left = 1
      Top = 0
      Width = 685
      Height = 24
      Panels = <>
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 0
      Width = 59
      Height = 17
      Caption = 'StaticText1'
      TabOrder = 1
    end
    object Button1: TButton
      Left = 611
      Top = 0
      Width = 75
      Height = 25
      Caption = #1057#1054#1061#1056#1040#1053#1048#1058#1068
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 512
      Top = 0
      Width = 99
      Height = 25
      Caption = #1057#1054#1061#1056#1040#1053#1048#1058#1068' '#1050#1040#1050
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 687
    Height = 347
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object ActionList1: TActionList
    Left = 472
    Top = 32
    object SaveFile: TAction
      Caption = '&'#1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 1
    end
  end
  object ImageList1: TImageList
    Left = 528
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Text File (*.txt)|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 408
    Top = 32
  end
end
