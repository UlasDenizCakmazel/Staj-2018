unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CPort;

type
  TForm1 = class(TForm)
    Button_Abrir: TButton;
    Button_COM: TButton;
    Button_ON: TButton;
    Button_OFF: TButton;
    Memo_Mensajes: TMemo;
    Button_Limpiar: TButton;
    ComPort1: TComPort;
    procedure Button_ONClick(Sender: TObject);
    procedure Button_OFFClick(Sender: TObject);
    procedure Button_COMClick(Sender: TObject);
    procedure Button_AbrirClick(Sender: TObject);
    procedure Button_LimpiarClick(Sender: TObject);
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

procedure TForm1.Button_AbrirClick(Sender: TObject);
begin
  // If the port is connected.
  if ComPort1.Connected then
  begin
    ComPort1.Close; // Close the port.

    Button_COM.Enabled := True;
    Button_ON.Enabled := False;
    Button_OFF.Enabled := False;
  end

  else  // Otherwise.

  begin
    ComPort1.Open;  // Open the port.

    Button_COM.Enabled := False;
    Button_ON.Enabled := True;
    Button_OFF.Enabled := True;
  end;
end;

procedure TForm1.Button_COMClick(Sender: TObject);
begin
ComPort1.ShowSetupDialog; // Open the port settings.
end;

procedure TForm1.Button_LimpiarClick(Sender: TObject);
begin
Memo_Mensajes.Clear();  // Clears Memo messages.
end;

procedure TForm1.Button_OFFClick(Sender: TObject);
begin
ComPort1.WriteStr('Luz_OFF'); // Send the command "Light_OFF" to the port.
end;

procedure TForm1.Button_ONClick(Sender: TObject);
begin
ComPort1.WriteStr('Luz_ON');  // Send the command "Light_ON" to the port.
end;

procedure TForm1.ComPort1AfterClose(Sender: TObject);
begin
    if Button_Abrir <> nil then
    Button_Abrir.Caption := 'Abrir';
end;

procedure TForm1.ComPort1AfterOpen(Sender: TObject);
begin
   Button_Abrir.Caption := 'Cerrar';
end;

procedure TForm1.ComPort1RxChar(Sender: TObject; Count: Integer);
var
  Str: String;
begin
  // Receives messages from Arduino.
  ComPort1.ReadStr(Str, Count);

  // Displays messages on the screen.
  Memo_Mensajes.Lines.Add( Str );

  // Save the Arduino messages to a txt file.
  Memo_Mensajes.Lines.SaveToFile('file.txt');
end;


end.
