object Form2: TForm2
  Left = 232
  Top = 188
  Width = 979
  Height = 570
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 88
    Top = 24
    Width = 65
    Height = 17
    DataField = 'no'
    DataSource = DataSource1
  end
  object DBText2: TDBText
    Left = 168
    Top = 24
    Width = 65
    Height = 17
    DataField = 'ad'
    DataSource = DataSource1
  end
  object DBText3: TDBText
    Left = 240
    Top = 24
    Width = 65
    Height = 17
    DataField = 'soyad'
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
    DataField = 'bsn'
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
  object DBNavigator1: TDBNavigator
    Left = 72
    Top = 56
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
    OnClick = DBNavigator1Click
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
  object DBEdit3: TDBEdit
    Left = 136
    Top = 112
    Width = 121
    Height = 21
    DataField = 'no'
    DataSource = DataSource2
    TabOrder = 5
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI10.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=okul;Data Source=HALIT-PC\S' +
      'QLEXPRESS;Initial File Name="";Server SPN=""'
    Provider = 'SQLNCLI10.1'
    Left = 8
    Top = 88
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ogrencibilgi'
    Left = 8
    Top = 8
    object ADOTable1no: TAutoIncField
      FieldName = 'no'
      ReadOnly = True
    end
    object ADOTable1ad: TWideStringField
      FieldName = 'ad'
      FixedChar = True
      Size = 15
    end
    object ADOTable1soyad: TWideStringField
      FieldName = 'soyad'
      FixedChar = True
      Size = 15
    end
    object ADOTable1cinsiyet: TWideStringField
      FieldName = 'cinsiyet'
      FixedChar = True
      Size = 5
    end
    object ADOTable1eposta: TWideStringField
      FieldName = 'eposta'
      FixedChar = True
      Size = 35
    end
    object ADOTable1cep: TWideStringField
      FieldName = 'cep'
      FixedChar = True
      Size = 11
    end
    object ADOTable1dogtarih: TIntegerField
      FieldName = 'dogtarih'
    end
    object ADOTable1dogyer: TWideStringField
      FieldName = 'dogyer'
      FixedChar = True
      Size = 15
    end
    object ADOTable1adres: TWideStringField
      FieldName = 'adres'
      FixedChar = True
      Size = 65
    end
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOTable2CalcFields
    TableName = 'ogrencinot'
    Left = 8
    Top = 136
    object ADOTable2no: TIntegerField
      FieldName = 'no'
    end
    object ADOTable2vize: TIntegerField
      FieldName = 'vize'
    end
    object ADOTable2final: TIntegerField
      FieldName = 'final'
    end
    object ADOTable2bsn: TFloatField
      FieldKind = fkCalculated
      FieldName = 'bsn'
      Calculated = True
    end
    object ADOTable2durum: TStringField
      FieldKind = fkCalculated
      FieldName = 'durum'
      Size = 10
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 8
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 8
    Top = 168
  end
end
