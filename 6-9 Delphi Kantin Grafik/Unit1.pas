unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UniProvider, MySQLUniProvider, DB, MemDS, DBAccess, Uni, Grids,
  DBGrids, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart, StdCtrls,
  DBCtrls;

type
  TForm1 = class(TForm)
    UniConnection1: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    UniQuery1: TUniQuery;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    UniQuery2: TUniQuery;
    UniQuery3: TUniQuery;
    Series2: TPieSeries;
    Series3: TPieSeries;
    Button4: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  say:integer;
  name:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
DataSource1.DataSet:=UniQuery1;
UniQuery1.Active:=True;
UniQuery2.Active:=False;
UniQuery3.Active:=False;
DBChart1.SeriesUp(Series1);
label1.caption:=Button1.Caption;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
DataSource1.DataSet:=UniQuery2;
UniQuery1.Active:=False;
UniQuery2.Active:=True;
UniQuery3.Active:=False;
DBChart1.SeriesUp(Series2);
label1.caption:=Button2.Caption;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
UniQuery1.Active:=False;
UniQuery2.Active:=False;
UniQuery3.Active:=False;
say:=0
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
DataSource1.DataSet:=UniQuery3;
UniQuery1.Active:=False;
UniQuery2.Active:=False;
UniQuery3.Active:=True;
DBChart1.SeriesUp(Series3);
label1.caption:=Button3.Caption;
end;



procedure TForm1.Button4Click(Sender: TObject);
begin
DBChart1.SaveToBitmapFile('grafik-'+label1.caption+'.jpeg');
end;

end.
