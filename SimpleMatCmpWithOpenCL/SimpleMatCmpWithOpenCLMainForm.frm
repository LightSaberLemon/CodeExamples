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
    Left = 20
    Height = 25
    Hint = 'Blocking call'
    Top = 8
    Width = 100
    Caption = 'Mat Cmp'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = btnMatCmpClick
  end
  object memLog: TMemo
    Left = 20
    Height = 184
    Top = 40
    Width = 372
    TabOrder = 1
  end
end
