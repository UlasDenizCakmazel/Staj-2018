unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Mask, ComCtrls, AppEvnts;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);

    private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Form1: TForm1;
  pt: TPoint;
  ilk_x,ilk_y,son_x,son_y:integer;
  i:integer;
  Btn: TButton;
  btn_isim:Array[0..1000] of String;
  secilen:Integer;

implementation

{$R *.dfm}

procedure boyut();
var
  genislik,yukseklik:integer;
begin

genislik:=abs(ilk_x-son_x);
yukseklik:=abs(ilk_y-son_y);
if (genislik<30) or (yukseklik<30) then
begin {*****} end
else
  begin
  Btn.Width:=genislik;
  btn.Height:=yukseklik;
  end;

end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   pt := ClientToScreen(point(x, y)) ;
   SetCursorPos(pt.x, pt.y) ;
   Form1.Caption:=IntToStr(pt.x)+','+IntToStr(pt.y);
   ilk_x:=pt.x;
   ilk_y:=pt.Y;
   end;

procedure TForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   pt := ClientToScreen(point(x, y)) ;
   SetCursorPos(pt.x, pt.y) ;
   Form1.Caption:=IntToStr(pt.x)+','+IntToStr(pt.y);
   son_x:=pt.x;
   son_y:=pt.Y;
   Try
    boyut();
   Finally
   End;
end;


procedure TForm1.btnApplyClick(Sender: TObject);
begin
   //(Sender as TButton).Caption:= 'You clicked me';
   btn:=(Sender as TButton);
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
Btn:=Button1;
For i:= 0 to Form1.ComponentCount -1 do
begin
  if (Form1.Components[i] is TButton) then
  begin
    TButton(Form1.Components[i]).Caption :='Button'+IntToStr(i+1); //IntToStr(i+1);
    TButton(Form1.Components[i]).OnClick :=  btnApplyClick;;
  end;
end;

end;





end.
