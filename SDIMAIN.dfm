object SDIAppForm: TSDIAppForm
  Left = 197
  Top = 111
  Caption = #1060#1072#1081#1083#1086#1074#1099#1081' '#1084#1077#1085#1077#1076#1078#1077#1088' ScArt'
  ClientHeight = 441
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter2: TSplitter
    Left = 385
    Top = 0
    Height = 400
    ExplicitLeft = 3
    ExplicitTop = 35
    ExplicitHeight = 373
  end
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 790
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = -3
      Width = 788
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 1
      ExplicitWidth = 39
    end
    object PanelDn: TPanel
      Left = 1
      Top = 0
      Width = 788
      Height = 40
      Align = alBottom
      TabOrder = 0
      OnResize = PanelDnResize
      object Button3: TButton
        Left = 144
        Top = -3
        Width = 75
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1086#1088' (Alt + F3)'
        TabOrder = 0
        TabStop = False
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 216
        Top = -3
        Width = 75
        Height = 25
        Caption = #1050#1086#1087#1080#1088#1086#1074'.'
        TabOrder = 1
        TabStop = False
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 288
        Top = -3
        Width = 75
        Height = 25
        Caption = #1055#1077#1088#1077#1084#1077#1089#1090'.'
        TabOrder = 2
        TabStop = False
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 360
        Top = -3
        Width = 89
        Height = 25
        Caption = #1057#1086#1079#1076'.'#1087#1072#1087#1082'.'
        TabOrder = 3
        TabStop = False
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 441
        Top = -3
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 4
        TabStop = False
        OnClick = Button7Click
      end
      object StatusBar1: TStatusBar
        Left = 1
        Top = 20
        Width = 786
        Height = 19
        Panels = <
          item
            Width = 50
          end
          item
            Width = 50
          end>
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 385
    Height = 400
    Align = alLeft
    TabOrder = 1
    object Panel2: TPanel
      Left = 2
      Top = 18
      Width = 381
      Height = 31
      Align = alTop
      Caption = 'Panel2'
      TabOrder = 0
      object DriveComboBox1: TDriveComboBox
        Left = 1
        Top = 1
        Width = 233
        Height = 22
        Align = alClient
        DirList = DirectoryListBox1
        TabOrder = 0
        TabStop = False
      end
      object FilterComboBox1: TFilterComboBox
        Left = 234
        Top = 1
        Width = 146
        Height = 24
        Align = alRight
        FileList = FileListBoxL
        Filter = 
          'All files (*.*)|*.*|svg|*.svg|png|*.png|jpg|*.jpg|bmp|*.bmp|mp3|' +
          '*.mp3|mp4|*.mp4|wav|*.wav|wma|*.wma|docx|*.docx|xlsx|*.xlsx|pptx' +
          '|*.pptx|mp4|*.mp4|avi|*.avi'
        TabOrder = 1
        TabStop = False
      end
    end
    object Panel9: TPanel
      Left = 2
      Top = 49
      Width = 381
      Height = 349
      Align = alClient
      Caption = 'Panel9'
      TabOrder = 1
      object Splitter4: TSplitter
        Left = 1
        Top = 116
        Width = 379
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitWidth = 232
      end
      object Panel4: TPanel
        Left = 1
        Top = 119
        Width = 379
        Height = 229
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 0
        object FileListBoxL: TFileListBox
          Left = 1
          Top = 1
          Width = 377
          Height = 227
          Align = alClient
          DragMode = dmAutomatic
          FileType = [ftDirectory, ftNormal]
          MultiSelect = True
          ParentShowHint = False
          ShowGlyphs = True
          ShowHint = False
          TabOrder = 0
          OnChange = FileListBoxLChange
          OnDblClick = FileListBoxLDblClick
          OnDragOver = FileListBoxRDragOver
          OnEnter = FileListBoxLEnter
          OnKeyDown = FileListBoxLKeyDown
          OnKeyUp = FileListBoxLKeyUp
          OnMouseDown = FileListBoxLMouseDown
          ExplicitLeft = 2
          ExplicitTop = 2
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 379
        Height = 115
        Align = alTop
        Caption = 'Panel3'
        TabOrder = 1
        object DirectoryListBox1: TDirectoryListBox
          Left = 1
          Top = 1
          Width = 377
          Height = 113
          TabStop = False
          Align = alClient
          FileList = FileListBoxL
          TabOrder = 0
        end
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 388
    Top = 0
    Width = 402
    Height = 400
    Align = alClient
    TabOrder = 2
    object Panel6: TPanel
      Left = 2
      Top = 46
      Width = 398
      Height = 352
      Align = alClient
      Caption = 'Panel6'
      TabOrder = 1
      object Splitter3: TSplitter
        Left = 1
        Top = 116
        Width = 396
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitWidth = 235
      end
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 396
        Height = 115
        Align = alTop
        Caption = 'Panel7'
        TabOrder = 0
        object DirectoryListBox2: TDirectoryListBox
          Left = 1
          Top = 1
          Width = 394
          Height = 113
          TabStop = False
          Align = alClient
          FileList = FileListBoxR
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Left = 1
        Top = 119
        Width = 396
        Height = 232
        Align = alClient
        Caption = 'Panel8'
        TabOrder = 1
        object FileListBoxR: TFileListBox
          Left = 1
          Top = 1
          Width = 394
          Height = 230
          Align = alClient
          DragMode = dmAutomatic
          FileType = [ftDirectory, ftNormal]
          MultiSelect = True
          ParentShowHint = False
          ShowGlyphs = True
          ShowHint = False
          TabOrder = 0
          OnChange = FileListBoxRChange
          OnDblClick = FileListBoxRDblClick
          OnDragOver = FileListBoxRDragOver
          OnEnter = FileListBoxREnter
          OnKeyDown = FileListBoxRKeyDown
          OnKeyUp = FileListBoxRKeyUp
          OnMouseDown = FileListBoxRMouseDown
        end
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 18
      Width = 398
      Height = 28
      Align = alTop
      Caption = 'Panel5'
      TabOrder = 0
      object DriveComboBox2: TDriveComboBox
        Left = 1
        Top = 1
        Width = 251
        Height = 22
        Align = alClient
        DirList = DirectoryListBox2
        TabOrder = 0
        TabStop = False
      end
      object FilterComboBox2: TFilterComboBox
        Left = 252
        Top = 1
        Width = 145
        Height = 24
        Align = alRight
        FileList = FileListBoxR
        TabOrder = 1
        TabStop = False
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 424
  end
  object MainMenu1: TMainMenu
    Left = 184
    Top = 65496
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1081#1083
        OnClick = N2Click
      end
    end
    object help: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      OnClick = helpClick
    end
    object view: TMenuItem
      Caption = #1042#1080#1076
      object oneCol: TMenuItem
        Caption = #1054#1076#1085#1072' '#1082#1086#1083#1086#1085#1082#1072
        OnClick = oneColClick
      end
      object twoCol: TMenuItem
        Caption = #1044#1074#1077' '#1082#1086#1083#1086#1085#1082#1080
        OnClick = twoColClick
      end
    end
    object comand: TMenuItem
      Caption = #1050#1086#1084#1072#1085#1076#1072
      object findFile: TMenuItem
        Caption = #1053#1072#1081#1090#1080' '#1092#1072#1081#1083'..'
        OnClick = findFileClick
      end
    end
    object properties: TMenuItem
      Caption = #1057#1074#1086#1081#1089#1090#1074#1072
      OnClick = propertiesClick
    end
    object progExit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = progExitClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 280
    object MBRProp: TMenuItem
      Caption = #1057#1074#1086#1081#1089#1090#1074#1072
      OnClick = MBRPropClick
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 596
    Top = 296
    object N4: TMenuItem
      Caption = #1057#1074#1086#1081#1089#1090#1074#1072
      OnClick = N4Click
    end
  end
end
