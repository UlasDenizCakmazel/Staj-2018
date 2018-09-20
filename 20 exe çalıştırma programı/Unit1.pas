unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ShellExecute(Handle, nil, PChar('C:\Users\DENÝZ\Desktop\staj rapor\18 - 19 ses kaydetme programý\Win32\Debug\SesKayit.exe'), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'cmd.exe', '/k TASKKILL /F /IM SesKayit.exe', nil, SW_HIDE) ;

end;

end.
