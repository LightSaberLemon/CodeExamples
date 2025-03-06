object frmSimpleMatCmpWithOpenCLMain: TfrmSimpleMatCmpWithOpenCLMain
  Left = 373
  Height = 235
  Top = 185
  Width = 456
  Caption = 'Simple MatCmp With OpenCL'
  ClientHeight = 235
  ClientWidth = 456
  LCLVersion = '8.4'
  object btnMatCmp: TButton
    Left = 8
    Height = 25
    Hint = 'Blocking call'
    Top = 0
    Width = 76
    Caption = 'Mat Cmp'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = btnMatCmpClick
  end
  object memLog: TMemo
    Left = 8
    Height = 168
    Top = 56
    Width = 440
    TabOrder = 1
  end
  object prbXOffset: TProgressBar
    Left = 200
    Height = 16
    Top = 0
    Width = 248
    Smooth = True
    TabOrder = 2
  end
  object prbYOffset: TProgressBar
    Left = 200
    Height = 16
    Top = 28
    Width = 248
    Smooth = True
    TabOrder = 3
  end
  object spnedtXOffset: TSpinEdit
    Left = 144
    Height = 23
    Top = 0
    Width = 50
    MaxValue = 1600
    TabOrder = 4
    Value = 18
  end
  object spnedtYOffset: TSpinEdit
    Left = 145
    Height = 23
    Top = 28
    Width = 50
    MaxValue = 1050
    TabOrder = 5
    Value = 17
  end
  object lblXOffset: TLabel
    Left = 96
    Height = 15
    Top = 3
    Width = 39
    Caption = 'XOffset'
  end
  object lblYOffset: TLabel
    Left = 96
    Height = 15
    Top = 31
    Width = 39
    Caption = 'YOffset'
  end
end
