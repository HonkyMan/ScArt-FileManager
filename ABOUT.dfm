object AboutBox: TAboutBox
  Left = 243
  Top = 108
  ActiveControl = OKButton
  BorderStyle = bsDialog
  Caption = #1057#1074#1086#1081#1089#1090#1074#1072
  ClientHeight = 451
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 7
    Top = 8
    Width = 387
    Height = 399
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BevelOuter = bvLowered
    TabOrder = 0
    object Image1: TImage
      Left = 7
      Top = 17
      Width = 65
      Height = 57
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      IsControl = True
    end
    object ProductName: TLabel
      Left = 213
      Top = 368
      Width = 68
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Product Name'
      IsControl = True
    end
    object Version: TLabel
      Left = 320
      Top = 368
      Width = 35
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Version'
      IsControl = True
    end
    object Copyright: TLabel
      Left = 8
      Top = 368
      Width = 44
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Copyright'
      IsControl = True
    end
    object Comments: TLabel
      Left = 96
      Top = 368
      Width = 49
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Comments'
      WordWrap = True
      IsControl = True
    end
    object LabelType: TLabel
      Left = 140
      Top = 80
      Width = 66
      Height = 16
      Caption = 'LabelType'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelSize: TLabel
      Left = 140
      Top = 147
      Width = 66
      Height = 16
      Caption = 'LabelType'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelCreate: TLabel
      Left = 140
      Top = 201
      Width = 66
      Height = 16
      Caption = 'LabelType'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelChanged: TLabel
      Left = 140
      Top = 223
      Width = 66
      Height = 16
      Caption = 'LabelType'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelOpened: TLabel
      Left = 140
      Top = 245
      Width = 66
      Height = 16
      Caption = 'LabelType'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PropFileName: TLinkLabel
      Left = 140
      Top = 17
      Width = 128
      Height = 29
      Caption = 'PropFileName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object PropType: TStaticText
      Left = 8
      Top = 80
      Width = 78
      Height = 20
      Caption = #1058#1080#1087' '#1092#1072#1081#1083#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object PropPlacement: TStaticText
      Left = 8
      Top = 125
      Width = 90
      Height = 20
      Caption = #1056#1072#1079#1084#1077#1097#1077#1085#1080#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object PropSize: TStaticText
      Left = 8
      Top = 151
      Width = 57
      Height = 20
      Caption = #1056#1072#1079#1084#1077#1088':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object PropCreate: TStaticText
      Left = 7
      Top = 197
      Width = 56
      Height = 20
      Caption = #1057#1086#1079#1076#1072#1085':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object PropChanged: TStaticText
      Left = 8
      Top = 223
      Width = 66
      Height = 20
      Caption = #1048#1079#1084#1077#1085#1077#1085':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object StaticText6: TStaticText
      Left = 8
      Top = 249
      Width = 55
      Height = 20
      Caption = #1054#1090#1082#1088#1099#1090':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object PropAtributes: TStaticText
      Left = 8
      Top = 293
      Width = 71
      Height = 20
      Caption = #1040#1090#1088#1080#1073#1091#1090#1099':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object CheckBoxHide: TCheckBox
      Left = 258
      Top = 296
      Width = 97
      Height = 17
      Caption = #1057#1082#1088#1099#1090#1100
      TabOrder = 8
    end
    object CheckBoxArchive: TCheckBox
      Left = 140
      Top = 296
      Width = 97
      Height = 17
      Caption = #1040#1088#1093#1080#1074#1080#1088#1074#1086#1072#1090#1100
      TabOrder = 9
    end
    object Placing: TEdit
      Left = 140
      Top = 120
      Width = 245
      Height = 21
      TabOrder = 10
    end
  end
  object OKButton: TButton
    Left = 176
    Top = 411
    Width = 65
    Height = 33
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    IsControl = True
  end
end
