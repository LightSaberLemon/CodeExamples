object frmGetControlTextOnWineMain: TfrmGetControlTextOnWineMain
  Left = 0
  Top = 0
  Caption = 'GetControlText On Wine'
  ClientHeight = 375
  ClientWidth = 642
  Color = clBtnFace
  Constraints.MinHeight = 396
  Constraints.MinWidth = 658
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblInfo: TLabel
    Left = 16
    Top = 344
    Width = 553
    Height = 23
    Caption = 'Move the mouse cursor over the target control (can be a window)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
  end
  object lblTextLength: TLabel
    Left = 568
    Top = 88
    Width = 17
    Height = 13
    Caption = 'Len'
  end
  object lblTextLengthNoASCII0: TLabel
    Left = 568
    Top = 152
    Width = 17
    Height = 13
    Caption = 'Len'
  end
  object lblRealTextLength: TLabel
    Left = 568
    Top = 56
    Width = 17
    Height = 13
    Caption = 'Len'
  end
  object lbeControlClass: TLabeledEdit
    Left = 16
    Top = 24
    Width = 512
    Height = 23
    EditLabel.Width = 63
    EditLabel.Height = 13
    EditLabel.Caption = 'Control Class'
    TabOrder = 0
  end
  object lbeControlText: TLabeledEdit
    Left = 16
    Top = 80
    Width = 544
    Height = 23
    EditLabel.Width = 228
    EditLabel.Height = 13
    EditLabel.Caption = 'Control Text  (truncated by editbox to ASCII 0)'
    TabOrder = 1
  end
  object lbeControlTextNoASCII0: TLabeledEdit
    Left = 16
    Top = 144
    Width = 544
    Height = 23
    EditLabel.Width = 123
    EditLabel.Height = 13
    EditLabel.Caption = 'Control Text [no ASCII 0]'
    TabOrder = 2
  end
  object pnlReportedLength: TPanel
    Left = 16
    Top = 312
    Width = 170
    Height = 28
    Hint = 'This seems to be correct'
    Alignment = taLeftJustify
    Caption = 'Reported Length'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object lbeControlTextNoASCII0NoTrunc: TLabeledEdit
    Left = 16
    Top = 224
    Width = 544
    Height = 23
    EditLabel.Width = 486
    EditLabel.Height = 13
    EditLabel.Caption = 
      'Control Text [no ASCII 0] - not truncated to the expected length' +
      ' (will contain junk data until ASCII 0)'
    TabOrder = 4
  end
  object lbeControlTextNoASCII0TruncToTwice: TLabeledEdit
    Left = 16
    Top = 280
    Width = 544
    Height = 23
    EditLabel.Width = 487
    EditLabel.Height = 13
    EditLabel.Caption = 
      'Control Text [no ASCII 0] - truncated to twice the expected leng' +
      'th  (expected junk on Windows only)'
    TabOrder = 5
  end
  object pnlHex: TPanel
    Left = 16
    Top = 170
    Width = 546
    Height = 22
    Hint = 'Raw string as hex'
    Alignment = taLeftJustify
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object tmrScan: TTimer
    Interval = 100
    OnTimer = tmrScanTimer
    Left = 367
    Top = 103
  end
end
