unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, ADODB;

type
  TForm2 = class(TForm)
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit3: TDBEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable1no: TAutoIncField;
    ADOTable1ad: TWideStringField;
    ADOTable1soyad: TWideStringField;
    ADOTable1cinsiyet: TWideStringField;
    ADOTable1eposta: TWideStringField;
    ADOTable1cep: TWideStringField;
    ADOTable1dogtarih: TIntegerField;
    ADOTable1dogyer: TWideStringField;
    ADOTable1adres: TWideStringField;
    ADOTable2no: TIntegerField;
    ADOTable2vize: TIntegerField;
    ADOTable2final: TIntegerField;
    ADOTable2bsn: TFloatField;
    ADOTable2durum: TStringField;
    procedure ADOTable2CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ADOTable2CalcFields(DataSet: TDataSet);
begin
ADOTable2bsn.AsFloat:= ADOTable2vize.AsInteger * 0.4 + ADOTable2final.AsInteger * 0.6;
  if ADOTable2bsn.AsFloat < 70 then
    ADOTable2durum.AsString := 'Kald�'
  else
    ADOTable2durum.AsString := 'Ge�ti';
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
ADOTable2no:=ADOTable1no;
end;

procedure TForm2.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
ADOTable2no:=ADOTable1no;
end;

end.
