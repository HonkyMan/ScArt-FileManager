object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1053#1072#1081#1090#1080' '#1092#1072#1081#1083
  ClientHeight = 412
  ClientWidth = 736
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
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 79
    Height = 17
    Caption = #1053#1072#1081#1090#1080' '#1092#1072#1081#1083#1099': '
    TabOrder = 0
  end
  object StaticText2: TStaticText
    Left = 8
    Top = 35
    Width = 80
    Height = 17
    Caption = #1052#1077#1089#1090#1086' '#1087#1086#1080#1089#1082#1072': '
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 8
    Top = 58
    Width = 313
    Height = 117
    TabOrder = 2
    object CheckBox1: TCheckBox
      Left = 16
      Top = 11
      Width = 97
      Height = 17
      Caption = #1058#1086#1083#1100#1082#1086' '#1095#1090#1077#1085#1080#1077
      TabOrder = 0
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 34
      Width = 97
      Height = 17
      Caption = #1057#1082#1088#1099#1090#1099#1077
      TabOrder = 1
    end
    object CheckBox4: TCheckBox
      Left = 16
      Top = 57
      Width = 97
      Height = 17
      Caption = #1057#1080#1089#1090#1077#1084#1085#1099#1077
      TabOrder = 2
    end
    object CheckBox5: TCheckBox
      Left = 16
      Top = 80
      Width = 97
      Height = 17
      Caption = #1042#1089#1077' '#1072#1090#1088#1080#1073#1091#1090#1099
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CheckBox7: TCheckBox
      Left = 136
      Top = 57
      Width = 97
      Height = 17
      Caption = #1040#1088#1093#1080#1074#1085#1099#1081
      TabOrder = 4
    end
    object CheckBox8: TCheckBox
      Left = 136
      Top = 34
      Width = 97
      Height = 17
      Caption = #1050#1072#1090#1072#1083#1086#1075
      TabOrder = 5
    end
    object CheckBox9: TCheckBox
      Left = 136
      Top = 11
      Width = 121
      Height = 17
      Caption = #1060#1072#1081#1083' '#1084#1077#1090#1082#1080' '#1076#1080#1089#1082#1072
      TabOrder = 6
    end
    object ListBox1: TListBox
      Left = 85
      Top = -27
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 7
    end
  end
  object Panel4: TPanel
    Left = 535
    Top = 8
    Width = 193
    Height = 167
    TabOrder = 3
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 177
      Height = 36
      Caption = #1053#1072#1095#1072#1090#1100' '#1087#1086#1080#1089#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 121
      Width = 177
      Height = 36
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DriveComboBox1: TDriveComboBox
    Left = 94
    Top = 35
    Width = 227
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 4
  end
  object SearchBox1: TSearchBox
    Left = 93
    Top = 8
    Width = 436
    Height = 21
    TabOrder = 5
    TextHint = #1053#1072#1087#1080#1096#1080#1090#1077' '#1080#1084#1103' '#1092#1072#1081#1083#1072'...'
    OnInvokeSearch = SearchBox1InvokeSearch
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 327
    Top = 35
    Width = 202
    Height = 140
    TabOrder = 6
    OnChange = DirectoryListBox1Change
  end
  object ListBox2: TListBox
    Left = 8
    Top = 181
    Width = 720
    Height = 223
    ItemHeight = 13
    TabOrder = 7
  end
end
