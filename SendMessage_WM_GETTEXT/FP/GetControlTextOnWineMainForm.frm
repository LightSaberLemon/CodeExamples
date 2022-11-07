object frmGetControlTextOnWineMain: TfrmGetControlTextOnWineMain
  Left = 387
  Height = 396
  Top = 43
  Width = 634
  Caption = 'GetControlText On Wine'
  ClientHeight = 396
  ClientWidth = 634
  Constraints.MinHeight = 396
  Constraints.MinWidth = 634
  LCLVersion = '7.5'
  object lbeControlClass: TLabeledEdit
    Left = 16
    Height = 23
    Top = 24
    Width = 512
    EditLabel.Height = 15
    EditLabel.Width = 512
    EditLabel.Caption = 'Control Class'
    TabOrder = 0
  end
  object lbeControlText: TLabeledEdit
    Left = 16
    Height = 23
    Top = 80
    Width = 544
    EditLabel.Height = 15
    EditLabel.Width = 544
    EditLabel.Caption = 'Control Text  (truncated by editbox to ASCII 0)'
    TabOrder = 1
  end
  object lbeControlTextNoASCII0: TLabeledEdit
    Left = 16
    Height = 23
    Top = 144
    Width = 544
    EditLabel.Height = 15
    EditLabel.Width = 544
    EditLabel.Caption = 'Control Text [no ASCII 0]'
    TabOrder = 2
  end
  object lblInfo: TLabel
    Left = 16
    Height = 25
    Top = 344
    Width = 551
    Caption = 'Move the mouse cursor over the target control (can be a window)'
    Font.CharSet = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentFont = False
  end
  object pnlReportedLength: TPanel
    Left = 16
    Height = 28
    Hint = 'This seems to be correct'
    Top = 312
    Width = 170
    Alignment = taLeftJustify
    Caption = 'Reported Length'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object lblTextLength: TLabel
    Left = 568
    Height = 15
    Top = 88
    Width = 19
    Caption = 'Len'
  end
  object lblTextLengthNoASCII0: TLabel
    Left = 568
    Height = 15
    Top = 152
    Width = 19
    Caption = 'Len'
  end
  object lblRealTextLength: TLabel
    Left = 568
    Height = 15
    Top = 56
    Width = 19
    Caption = 'Len'
  end
  object lbeControlTextNoASCII0NoTrunc: TLabeledEdit
    Left = 16
    Height = 23
    Top = 224
    Width = 544
    EditLabel.Height = 15
    EditLabel.Width = 544
    EditLabel.Caption = 'Control Text [no ASCII 0] - not truncated to the expected length (will contain junk data until ASCII 0)'
    TabOrder = 4
  end
  object lbeControlTextNoASCII0TruncToTwice: TLabeledEdit
    Left = 16
    Height = 23
    Top = 280
    Width = 544
    EditLabel.Height = 15
    EditLabel.Width = 544
    EditLabel.Caption = 'Control Text [no ASCII 0] - truncated to twice the expected length  (expected junk on Windows only)'
    TabOrder = 5
  end
  object pnlHex: TPanel
    Left = 16
    Height = 22
    Hint = 'Raw string as hex'
    Top = 170
    Width = 546
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
