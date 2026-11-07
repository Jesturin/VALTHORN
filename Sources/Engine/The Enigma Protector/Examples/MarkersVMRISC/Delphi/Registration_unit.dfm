object frmRegistration: TfrmRegistration
  Left = 302
  Top = 301
  Width = 445
  Height = 195
  Caption = 'Registration...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    429
    157)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 76
    Height = 13
    Caption = 'Registration info'
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 76
    Height = 13
    Caption = 'Registration key'
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 409
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 8
    Top = 80
    Width = 409
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object Button1: TButton
    Left = 344
    Top = 120
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 2
    OnClick = Button1Click
  end
end
