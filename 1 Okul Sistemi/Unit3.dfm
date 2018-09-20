object Form3: TForm3
  Left = 336
  Top = 204
  Width = 979
  Height = 540
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 88
    Top = 24
    Width = 65
    Height = 17
    DataField = 'ogr_no'
    DataSource = DataSource1
  end
  object DBText2: TDBText
    Left = 168
    Top = 24
    Width = 65
    Height = 17
    DataField = 'ogr_ad'
    DataSource = DataSource1
  end
  object DBText3: TDBText
    Left = 240
    Top = 24
    Width = 65
    Height = 17
    DataField = 'ogr_no'
    DataSource = DataSource1
  end
  object Label1: TLabel
    Left = 104
    Top = 0
    Width = 14
    Height = 13
    Caption = 'No'
  end
  object Label2: TLabel
    Left = 176
    Top = 0
    Width = 13
    Height = 13
    Caption = 'Ad'
  end
  object Label3: TLabel
    Left = 248
    Top = 0
    Width = 30
    Height = 13
    Caption = 'Soyad'
  end
  object DBText4: TDBText
    Left = 136
    Top = 112
    Width = 65
    Height = 17
    DataField = 'ogr_no'
    DataSource = DataSource2
  end
  object Label4: TLabel
    Left = 64
    Top = 112
    Width = 54
    Height = 13
    Caption = #214#287'renci No'
  end
  object Label5: TLabel
    Left = 96
    Top = 144
    Width = 20
    Height = 13
    Caption = 'Vize'
  end
  object Label6: TLabel
    Left = 96
    Top = 176
    Width = 22
    Height = 13
    Caption = 'Final'
  end
  object Label7: TLabel
    Left = 64
    Top = 208
    Width = 55
    Height = 13
    Caption = 'Ba'#351'ar'#305' Notu'
  end
  object Label8: TLabel
    Left = 88
    Top = 240
    Width = 31
    Height = 13
    Caption = 'Durum'
  end
  object DBText5: TDBText
    Left = 136
    Top = 208
    Width = 65
    Height = 17
    DataField = 'basari_notu'
    DataSource = DataSource2
  end
  object DBText6: TDBText
    Left = 136
    Top = 240
    Width = 65
    Height = 17
    DataField = 'durum'
    DataSource = DataSource2
  end
  object Label9: TLabel
    Left = 280
    Top = 152
    Width = 32
    Height = 13
    Caption = 'Label9'
  end
  object Label10: TLabel
    Left = 280
    Top = 184
    Width = 38
    Height = 13
    Caption = 'Label10'
  end
  object DBNavigator1: TDBNavigator
    Left = 72
    Top = 56
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 136
    Top = 144
    Width = 121
    Height = 21
    DataField = 'vize'
    DataSource = DataSource2
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 136
    Top = 176
    Width = 121
    Height = 21
    DataField = 'final'
    DataSource = DataSource2
    TabOrder = 2
  end
  object DBNavigator2: TDBNavigator
    Left = 40
    Top = 272
    Width = 270
    Height = 33
    DataSource = DataSource2
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 536
    Top = 32
    Width = 320
    Height = 120
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=okul;Data Source=DESKTOP-LK' +
      'DSGV3\DENIZ;Initial File Name="";Server SPN=""'
    Provider = 'SQLNCLI11.1'
    Left = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 8
    Top = 64
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ogrenci_bilgi'
    Left = 8
    Top = 32
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ogranci_not'
    Left = 8
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 8
    Top = 144
  end
end
