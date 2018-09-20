object Form1: TForm1
  Left = 288
  Top = 117
  Width = 979
  Height = 581
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
  object DBText1: TDBText
    Left = 144
    Top = 24
    Width = 65
    Height = 17
    DataField = 'no'
    DataSource = DataSource1
  end
  object Label1: TLabel
    Left = 104
    Top = 56
    Width = 16
    Height = 13
    Caption = '-Ad'
  end
  object Label2: TLabel
    Left = 96
    Top = 88
    Width = 30
    Height = 13
    Caption = 'Soyad'
  end
  object Label3: TLabel
    Left = 88
    Top = 120
    Width = 36
    Height = 13
    Caption = 'Cinsiyet'
  end
  object Label4: TLabel
    Left = 88
    Top = 152
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 88
    Top = 152
    Width = 36
    Height = 13
    Caption = 'E-posta'
  end
  object Label6: TLabel
    Left = 56
    Top = 184
    Width = 67
    Height = 13
    Caption = 'Cep  Telefonu'
  end
  object Label7: TLabel
    Left = 64
    Top = 216
    Width = 63
    Height = 13
    Caption = 'Do'#287'um Tarihi'
  end
  object Label8: TLabel
    Left = 72
    Top = 248
    Width = 55
    Height = 13
    Caption = 'Do'#287'um Yeri'
  end
  object Label9: TLabel
    Left = 96
    Top = 288
    Width = 27
    Height = 13
    Caption = 'Adres'
  end
  object DBNavigator1: TDBNavigator
    Left = 56
    Top = 352
    Width = 400
    Height = 41
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    DataField = 'ad'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 88
    Width = 121
    Height = 21
    DataField = 'soyad'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 144
    Top = 152
    Width = 121
    Height = 21
    DataField = 'eposta'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBComboBox1: TDBComboBox
    Left = 144
    Top = 120
    Width = 145
    Height = 21
    DataField = 'cinsiyet'
    DataSource = DataSource1
    ItemHeight = 13
    Items.Strings = (
      'Erkek'
      'Kad'#305'n')
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 144
    Top = 184
    Width = 121
    Height = 21
    DataField = 'cep'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 144
    Top = 216
    Width = 121
    Height = 21
    DataField = 'dogtarih'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 144
    Top = 248
    Width = 121
    Height = 21
    DataField = 'dogyer'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBMemo1: TDBMemo
    Left = 144
    Top = 288
    Width = 249
    Height = 49
    DataField = 'adres'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 480
    Top = 8
    Width = 457
    Height = 489
    DataSource = DataSource1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 80
    Top = 464
    Width = 121
    Height = 25
    Caption = 'Ogrenci Notlar'#305'na Git'
    TabOrder = 10
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI10.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=okul;Data Source=HALIT-PC\S' +
      'QLEXPRESS;Initial File Name="";Server SPN=""'
    Provider = 'SQLNCLI10.1'
    Left = 24
    Top = 24
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ogrencibilgi'
    Left = 24
    Top = 56
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
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 24
    Top = 104
  end
end
