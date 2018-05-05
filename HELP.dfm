object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1055#1086#1084#1086#1097#1100' '#1087#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
  ClientHeight = 374
  ClientWidth = 444
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 444
    Height = 22
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    object ComboBox1: TComboBox
      Left = 1
      Top = 1
      Width = 442
      Height = 21
      Align = alClient
      TabOrder = 0
      OnClick = ComboBox1Click
      Items.Strings = (
        'Delphi'
        'Object Pascal')
      ExplicitWidth = 336
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 22
    Width = 444
    Height = 352
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 35
    ExplicitWidth = 374
    ExplicitHeight = 331
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 442
      Height = 350
      Align = alClient
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
      ExplicitTop = 32
      ExplicitWidth = 388
      ExplicitHeight = 320
    end
  end
end
