unit Unit1;

interface

uses
 

type, StdCtrls, Controls, Classes, CPort
  TForm1 = class(TForm)
    ComPort1: TComPort;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComPort1AfterClose(Sender: TObject);
    procedure ComPort1AfterOpen(Sender: TObject);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
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
// If the port is connected.
  if ComPort1.Connected then
  begin
    ComPort1.Close; // Close the port.

    Button2.Enabled := True; //com btn
    Button3.Enabled := False; //on btn
    Button4.Enabled := False; //off btn
  end

  else  // Otherwise.

  begin
    ComPort1.Open;  // Open the port.

    Button2.Enabled := False; //com btn
    Button3.Enabled := True; //on btn
    Button4.Enabled := True; //off btn
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ComPort1.ShowSetupDialog; // Open the port settings.
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
ComPort1.WriteStr('Luz_OFF'); // Send the command "Light_OFF" to the port.
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ComPort1.WriteStr('Luz_ON');  // Send the command "Light_ON" to the port.
end;

procedure TForm1.ComPort1AfterClose(Sender: TObject);
begin
 if Button1 <> nil then
    Button1.Caption := 'Abrir';
end;

procedure TForm1.ComPort1AfterOpen(Sender: TObject);
begin
Button1.Caption := 'Cerrar';
end;

procedure TForm1.ComPort1RxChar(Sender: TObject; Count: Integer);
var
  Str: String;
begin
  // Receives messages from Arduino.
  ComPort1.ReadStr(Str, Count);

  // Displays messages on the screen.
  Memo1.Lines.Add( Str );

  // Save the Arduino messages to a txt file.
  Memo1.Lines.SaveToFile('file.txt');

end;

end.
