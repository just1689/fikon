object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Fikon Version 1a'
  ClientHeight = 155
  ClientWidth = 222
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
  object edtIn: TEdit
    Left = 8
    Top = 8
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object memOut: TMemo
    Left = 8
    Top = 62
    Width = 209
    Height = 89
    TabOrder = 3
  end
  object btnGo: TButton
    Left = 184
    Top = 8
    Width = 33
    Height = 25
    Caption = 'GO'
    Default = True
    TabOrder = 0
    TabStop = False
    OnClick = btnGoClick
  end
  object edtOut: TEdit
    Left = 8
    Top = 35
    Width = 209
    Height = 21
    TabOrder = 2
  end
end
