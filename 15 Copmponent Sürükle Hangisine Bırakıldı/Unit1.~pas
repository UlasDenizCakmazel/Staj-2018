unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls ;


type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
  procedure ControlMouseDown(Sender: TObject;Button: TMouseButton;Shift: TShiftState;X, Y: Integer);
procedure ControlMouseMove(Sender: TObject;Shift: TShiftState;X, Y: Integer);
procedure ControlMouseUp(Sender: TObject;Button: TMouseButton;Shift: TShiftState;X, Y: Integer);
    procedure FormCreate(Sender: TObject);


private
inReposition : boolean;
oldPos : TPoint;

private


  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;
  bilgi:Array[0..1000] of Array[0..1] of String;
  merkez:Array[0..1000] of Array[0..1] of Integer;
  eski_loc:Array[0..1000] of Array[0..1] of Integer;
  tara_merkez:Array[0..1000] of Array[0..1] of Integer;
  hesap_merkez:Array[0..1000] of Array[0..1] of Integer;
  i,x_git,y_git,x_eski,y_eski:integer;


implementation

uses Types, Math;

{$R *.dfm}


Function hesapla(x1,y1: Integer) : Integer;
var
  i,j,k,sur_merkez_x,sur_merkez_y,sec:integer;
  kont,kont2:Boolean;
  name1,name2:string;

begin
kont:=false;
kont2:=false;
for i:=0 to Form1.ComponentCount-1 do
begin
  if (Form1.Components[i] is TButton) then
  begin
    tara_merkez[i,0]:=TLabel(Form1.Components[i]).Left+ hesap_merkez[i,0];
    tara_merkez[i,1]:=TLabel(Form1.Components[i]).Top+  hesap_merkez[i,1];
  end;
  if (Form1.Components[i] is TEdit) then
  begin
      tara_merkez[i,0]:=TLabel(Form1.Components[i]).Left+ hesap_merkez[i,0];
      tara_merkez[i,1]:=TLabel(Form1.Components[i]).Top+  hesap_merkez[i,1];
  end;
  if (Form1.Components[i] is TLabel) then
  begin
      tara_merkez[i,0]:=TLabel(Form1.Components[i]).Left+ hesap_merkez[i,0];
      tara_merkez[i,1]:=TLabel(Form1.Components[i]).Top+  hesap_merkez[i,1];
  end;
end;

for i:=0 to Form1.ComponentCount-1 do
    if ((tara_merkez[i,0])<>(merkez[i,0])) and ((tara_merkez[i,0])<>(merkez[i,0])) then
     begin
      sec:=i;
      kont2:=true;

     end;
if kont2 then
begin
  for i:=0 to Form1.ComponentCount do
  begin
   if ((abs((tara_merkez[i][0])-(tara_merkez[sec][0])))< hesap_merkez[i,0]) and ((abs((merkez[i][1])-(tara_merkez[sec][1])))< hesap_merkez[i,1]) then
    begin
      if bilgi[sec,0]='Button' then name1:='Button'+bilgi[sec,1]
      else if bilgi[sec,0]='Edit' then name1:='Edit'+bilgi[sec,1]
      else if bilgi[sec,0]='Label' then name1:='Label'+bilgi[sec,1];
      j:=i;
      if bilgi[j,0]='Button' then name2:='Button'+bilgi[j,1]
      else if bilgi[j,0]='Edit' then name2:='Edit'+bilgi[j,1]
      else if bilgi[j,0]='Label' then name2:='Label'+bilgi[j,1];
      if (i<>sec) and (name1<>name2) then
        kont:=true
    end
    else if ((abs((tara_merkez[i][0])-(tara_merkez[sec][0])))< hesap_merkez[sec,0]) and ((abs((merkez[i][1])-(tara_merkez[sec][1])))< hesap_merkez[sec,1]) then
    begin
      if bilgi[sec,0]='Button' then name1:='Button'+bilgi[sec,1]
      else if bilgi[sec,0]='Edit' then name1:='Edit'+bilgi[sec,1]
      else if bilgi[sec,0]='Label' then name1:='Label'+bilgi[sec,1];
      j:=i;
      if bilgi[j,0]='Button' then name2:='Button'+bilgi[j,1]
      else if bilgi[j,0]='Edit' then name2:='Edit'+bilgi[j,1]
      else if bilgi[j,0]='Label' then name2:='Label'+bilgi[j,1];
      if (i<>sec) and (name1<>name2) then
        kont:=true

    end;

  end;
end;

if kont and (name1<>name2) then
begin
  ShowMessage(name1 + ' <-> ' + name2 +' üzerine koynuldu');
  if bilgi[sec,0]='Button' then
  begin
  if (bilgi[j,0]='Button') and (name1<>name2) then
    TButton(Form1.Components[j]).Caption := TButton(Form1.Components[j]).Caption+'+'+TButton(Form1.Components[sec]).Caption
   else if (bilgi[j,0]='Edit') and (name1<>name2) then
    TEdit(Form1.Components[j]).Text := TEdit(Form1.Components[j]).Text+'+'+TButton(Form1.Components[sec]).Caption
   else if (bilgi[j,0]='Label') and (name1<>name2) then
    TLabel(Form1.Components[j]).Caption := TLabel(Form1.Components[j]).Caption+'+'+TButton(Form1.Components[sec]).Caption;
  end
  else if bilgi[sec,0]='Edit' then
  begin
  if (bilgi[j,0]='Button') and (name1<>name2) then
    TButton(Form1.Components[j]).Caption := TButton(Form1.Components[j]).Caption+'+'+TEdit(Form1.Components[sec]).Text
   else if (bilgi[j,0]='Edit') and (name1<>name2) then
    TEdit(Form1.Components[j]).Text := TEdit(Form1.Components[j]).Text+'+'+TEdit(Form1.Components[sec]).Text
   else if (bilgi[j,0]='Label') and (name1<>name2) then
    TLabel(Form1.Components[j]).Caption := TLabel(Form1.Components[j]).Caption+'+'+TEdit(Form1.Components[sec]).Text;
  end;
end;

end;


procedure TForm1.FormCreate(Sender: TObject);
var
  left_1,top_1:Integer;
  say_btn,say_edit,say_label:integer;
begin
say_btn:=0;say_edit:=0;say_label:=0;
For i:= 0 to Form1.ComponentCount -1 do
begin
  if (Form1.Components[i] is TButton) then
  begin
    say_btn:=say_btn+1;
    TButton(Form1.Components[i]).Caption :=IntToStr(i+1); //IntToStr(i+1);
    TButton(Form1.Components[i]).OnMouseDown := ControlMouseDown;
    TButton(Form1.Components[i]).OnMouseMove := ControlMouseMove;
    TButton(Form1.Components[i]).OnMouseUp := ControlMouseUp;
    hesap_merkez[i,0]:=Ceil(TButton(Form1.Components[i]).Width/2);
    hesap_merkez[i,1]:=Ceil(TButton(Form1.Components[i]).Height/2);
    merkez[i,0]:=TButton(Form1.Components[i]).Left+hesap_merkez[i,0]; {buton eni yarýsý}
    merkez[i,1]:=TButton(Form1.Components[i]).Top+hesap_merkez[i,1];{buton boyu yarýsý}
    eski_loc[i,0]:=TButton(Form1.Components[i]).Left;
    eski_loc[i,1]:=TButton(Form1.Components[i]).Top;
    bilgi[i,0]:='Button';
    bilgi[i,1]:=IntToStr(say_btn);
  end
  else if(Form1.Components[i] is TEdit) then
  begin
    say_edit:=say_edit+1;
    TEdit(Form1.Components[i]).Text :=IntToStr(i+1);
    TEdit(Form1.Components[i]).OnMouseDown := ControlMouseDown;
    TEdit(Form1.Components[i]).OnMouseMove := ControlMouseMove;
    TEdit(Form1.Components[i]).OnMouseUp := ControlMouseUp;
    hesap_merkez[i,0]:=Ceil(TButton(Form1.Components[i]).Width/2);
    hesap_merkez[i,1]:=Ceil(TButton(Form1.Components[i]).Height/2);
    merkez[i,0]:=TEdit(Form1.Components[i]).Left+hesap_merkez[i,0]; {buton eni yarýsý}
    merkez[i,1]:=TEdit(Form1.Components[i]).Top+hesap_merkez[i,1];{buton boyu yarýsý}
    eski_loc[i,0]:=TEdit(Form1.Components[i]).Left;
    eski_loc[i,1]:=TEdit(Form1.Components[i]).Top;
    bilgi[i,0]:='Edit';
    bilgi[i,1]:=IntToStr(say_edit);
  end
  else if (Form1.Components[i] is TLabel) then
  begin
    say_label:=say_label+1;
    TLabel(Form1.Components[i]).Caption :=IntToStr(i+1);
    TLabel(Form1.Components[i]).OnMouseDown := ControlMouseDown;
    TLabel(Form1.Components[i]).OnMouseMove := ControlMouseMove;
    TLabel(Form1.Components[i]).OnMouseUp := ControlMouseUp;
    hesap_merkez[i,0]:=Ceil(TButton(Form1.Components[i]).Width/2);
    hesap_merkez[i,1]:=Ceil(TButton(Form1.Components[i]).Height/2);
    merkez[i,0]:=TLabel(Form1.Components[i]).Left+hesap_merkez[i,0]; {buton eni yarýsý}
    merkez[i,1]:=TLabel(Form1.Components[i]).Top+hesap_merkez[i,1];{buton boyu yarýsý}
    eski_loc[i,0]:=TLabel(Form1.Components[i]).Left;
    eski_loc[i,1]:=TLabel(Form1.Components[i]).Top;
    bilgi[i,0]:='Label';
    bilgi[i,1]:=IntToStr(say_label);
  end;
  end;
end; (*FormCreate*)

procedure TForm1.ControlMouseDown(Sender: TObject;Button: TMouseButton;Shift: TShiftState;
X, Y: Integer);
begin
//if (chkPositionRunTime.Checked) AND (Sender is TWinControl) then
//begin
inReposition:=True;
SetCapture(TWinControl(Sender).Handle);
GetCursorPos(oldPos);

//end;
end; (*ControlMouseDown*)


procedure TForm1.ControlMouseMove(Sender: TObject;Shift: TShiftState;
X, Y: Integer);
const
minWidth = 20;
minHeight = 20;
var
newPos: TPoint;
frmPoint : TPoint;
begin
if inReposition then
begin
with TWinControl(Sender) do
begin
GetCursorPos(newPos);
if ssShift in Shift then
begin //resize
Screen.Cursor := crSizeNWSE;
frmPoint := ScreenToClient(Mouse.CursorPos);
if frmPoint.X > minWidth then
Width := frmPoint.X;
if frmPoint.Y > minHeight then
Height := frmPoint.Y;
end
else //move
begin
Screen.Cursor := crSize;
Left := Left - oldPos.X + newPos.X;
Top := Top - oldPos.Y + newPos.Y;
oldPos := newPos;
end;
end;
end;

end; (*ControlMouseMove*)

procedure TForm1.ControlMouseUp(Sender: TObject;Button: TMouseButton;
Shift: TShiftState; X, Y: Integer);
begin
if inReposition then
begin
Screen.Cursor := crDefault;
ReleaseCapture;
inReposition := False;
end;

hesapla(x_git,y_git);

For i:=0 to Form1.ComponentCount -1 do
begin
  if (Form1.Components[i] is TButton) then   //bu kod ile geri gelmesini saðlýyorum
  begin
  TButton(Form1.Components[i]).Left:=eski_loc[i,0];
  TButton(Form1.Components[i]).Top:=eski_loc[i,1];
  end
  else if (Form1.Components[i] is TEdit) then   //bu kod ile geri gelmesini saðlýyorum
  begin
  TButton(Form1.Components[i]).Left:=eski_loc[i,0];
  TButton(Form1.Components[i]).Top:=eski_loc[i,1];
  end
end;

end; (*ControlMouseUp*)
  


end.
