object Form1: TForm1
  Left = 240
  Top = 181
  Width = 870
  Height = 450
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button_Abrir: TButton
    Left = 160
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Abrir'
    TabOrder = 0
    OnClick = Button_AbrirClick
  end
  object Button_COM: TButton
    Left = 64
    Top = 32
    Width = 75
    Height = 25
    Caption = 'COM'
    TabOrder = 1
    OnClick = Button_COMClick
  end
  object Button_ON: TButton
    Left = 56
    Top = 128
    Width = 75
    Height = 25
    Caption = 'ON'
    TabOrder = 2
    OnClick = Button_ONClick
  end
  object Button_OFF: TButton
    Left = 56
    Top = 176
    Width = 75
    Height = 25
    Caption = 'OFF'
    TabOrder = 3
    OnClick = Button_OFFClick
  end
  object Memo_Mensajes: TMemo
    Left = 152
    Top = 120
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo_Mensajes')
    TabOrder = 4
  end
  object Button_Limpiar: TButton
    Left = 264
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Limpiar'
    TabOrder = 5
    OnClick = Button_LimpiarClick
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnAfterOpen = ComPort1AfterOpen
    OnAfterClose = ComPort1AfterClose
    OnRxChar = ComPort1RxChar
    Left = 16
    Top = 32
  end
end
