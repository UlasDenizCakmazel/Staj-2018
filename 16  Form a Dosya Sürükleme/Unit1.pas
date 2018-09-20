unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Mask, ComCtrls, AppEvnts;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
procedure FormCreate(Sender: TObject);
procedure FormDestroy(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
private
{ Private declarations }
protected
procedure WMDropFiles(var Msg: TMessage); message WM_DROPFILES;
public
{ Public declarations }
end;

var
Form1: TForm1;

implementation

{$R *.dfm}

uses ShellAPI;

procedure TForm1.FormCreate(Sender: TObject);
begin
DragAcceptFiles(Handle, True);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
DragAcceptFiles(Handle, False);
end;

procedure TForm1.WMDropFiles(var Msg: TMessage);
var
hDrop: THandle;
FileCount: Integer;
NameLen: Integer;
I: Integer;
S: string;

begin
hDrop:= Msg.wParam;
FileCount:= DragQueryFile (hDrop , $FFFFFFFF, nil, 0);

for I:= 0 to FileCount - 1 do begin
NameLen:= DragQueryFile(hDrop, I, nil, 0) + 1;
SetLength(S, NameLen);
DragQueryFile(hDrop, I, Pointer(S), NameLen);

Listbox1.Items.Add (S);
end;

DragFinish(hDrop);
end;


procedure TForm1.ListBox1Click(Sender: TObject);
var
secilen : string;
begin
secilen := ListBox1.Items[ListBox1.ItemIndex];
//ShowMessage(secilen);
Label2.Caption := ExtractFileDir(secilen);
Label4.Caption := ExtractFileName(secilen);
end;




end.
