object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'gmail'
  ClientHeight = 342
  ClientWidth = 724
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
  object Label1: TLabel
    Left = 352
    Top = 8
    Width = 96
    Height = 13
    Caption = 'g'#246'nderici mail adresi'
  end
  object Label2: TLabel
    Left = 399
    Top = 35
    Width = 49
    Height = 13
    Caption = 'mail '#351'ifresi'
  end
  object Label3: TLabel
    Left = 378
    Top = 62
    Width = 70
    Height = 13
    Caption = 'al'#305'c'#305' mail adresi'
  end
  object Label4: TLabel
    Left = 425
    Top = 89
    Width = 23
    Height = 13
    Caption = 'konu'
  end
  object Label5: TLabel
    Left = 424
    Top = 111
    Width = 24
    Height = 13
    Caption = 'i'#231'erik'
  end
  object Label6: TLabel
    Left = 8
    Top = 8
    Width = 52
    Height = 13
    Caption = 'dosya yolu'
  end
  object Label7: TLabel
    Left = 8
    Top = 35
    Width = 72
    Height = 13
    Caption = 'ekteki dosyalar'
  end
  object Button1: TButton
    Left = 586
    Top = 311
    Width = 121
    Height = 25
    Caption = 'send'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 454
    Top = 8
    Width = 253
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 454
    Top = 35
    Width = 253
    Height = 21
    Ctl3D = True
    DoubleBuffered = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 454
    Top = 62
    Width = 253
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 454
    Top = 89
    Width = 253
    Height = 21
    TabOrder = 4
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 66
    Top = 8
    Width = 280
    Height = 21
    TabOrder = 5
    Text = 'Edit5'
  end
  object ListBox1: TListBox
    Left = 8
    Top = 54
    Width = 338
    Height = 251
    ItemHeight = 13
    TabOrder = 6
  end
  object Button2: TButton
    Left = 225
    Top = 311
    Width = 121
    Height = 25
    Caption = 'dosya ekle'
    TabOrder = 7
    OnClick = Button2Click
  end
  object RichEdit1: TRichEdit
    Left = 454
    Top = 116
    Width = 253
    Height = 189
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 8
    Zoom = 100
  end
  object Button4: TButton
    Left = 373
    Top = 224
    Width = 75
    Height = 49
    Caption = 'ini dosyas'#305'ndan bilgi '#231'ekme'
    TabOrder = 9
    WordWrap = True
    OnClick = Button4Click
  end
  object OpenDialog1: TOpenDialog
    Left = 104
    Top = 312
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 8
    Top = 312
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 40
    Top = 312
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 72
    Top = 312
  end
end
