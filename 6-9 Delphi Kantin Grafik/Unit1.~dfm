object Form1: TForm1
  Left = 258
  Top = 105
  Width = 979
  Height = 538
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 792
    Top = 256
    Width = 39
    Height = 13
    Caption = 'Label1'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 64
    Width = 689
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object DBChart1: TDBChart
    Left = 24
    Top = 192
    Width = 681
    Height = 297
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TDBChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    Legend.TextStyle = ltsRightPercent
    View3D = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DOptions.Zoom = 95
    View3DWalls = False
    TabOrder = 0
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsLabelPercent
      Marks.Visible = True
      DataSource = UniQuery1
      SeriesColor = clRed
      XLabelsSource = 'stok_adi'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loAscending
      PieValues.ValueSource = 'miktar'
    end
    object Series2: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsLabelPercent
      Marks.Visible = True
      DataSource = UniQuery2
      SeriesColor = clGreen
      XLabelsSource = 'stok_adi'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
      PieValues.ValueSource = 'miktar'
    end
    object Series3: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsLabelPercent
      Marks.Visible = True
      DataSource = UniQuery3
      SeriesColor = clYellow
      XLabelsSource = 'stok_adi'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
      PieValues.ValueSource = 'miktar'
    end
  end
  object Button1: TButton
    Left = 16
    Top = 32
    Width = 75
    Height = 25
    Caption = 'AL'#304
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 32
    Width = 75
    Height = 25
    Caption = 'VEL'#304
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 32
    Width = 75
    Height = 25
    Caption = 'HASAN'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 784
    Top = 320
    Width = 129
    Height = 65
    Caption = 'Grafi'#287'i Kaydet'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = Button4Click
  end
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Database = 'kantin'
    Debug = True
    Username = 'root'
    Server = 'localhost'
    Connected = True
    Left = 640
    Top = 8
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 680
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 720
    Top = 8
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT * FROM analiz WHERE ogrenci_adi='#39'ali'#39)
    Left = 24
  end
  object UniQuery2: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT * FROM analiz WHERE ogrenci_adi='#39'veli'#39)
    Left = 120
  end
  object UniQuery3: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT * FROM analiz WHERE ogrenci_adi='#39'hasan'#39)
    Active = True
    Left = 208
  end
end
