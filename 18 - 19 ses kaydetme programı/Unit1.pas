unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Forms, FMX.Dialogs, FMX.Media;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure SetArsSesKaydiOlustur;
    function GetArsHedef: String;
    { Private declarations }
  public
    Mikrofon: TAudioCaptureDevice;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

Uses System.IOUtils;

function TForm1.GetArsHedef(): String;
const
  DosyaAdi: String = 'kayit.mp3';
begin
{$IFDEF ANDROID}          // Dahili Document klas�r�
  Result := TPath.Combine(TPath.GetSharedDocumentsPath, DosyaAdi);
{$ELSE}
{$IFDEF IOS}
  Result := TPath.GetHomePath + '/Documents/' + DosyaAdi;
  showmessage(TPath.GetHomePath);
{$ELSE}
  //Result := TPath.Combine(TPath.GetTempPath, DosyaAdi);
  Result := DosyaAdi;
{$ENDIF}
{$ENDIF}
end;

procedure TForm1.SetArsSesKaydiOlustur();
begin
  if Assigned(Mikrofon) then
  begin
    Mikrofon.FileName := GetArsHedef();
    try
      Mikrofon.StartCapture; // Ses kayd�n� ba�lat
    except begin
      application.Title := 'Kay�t Cihaz� Desteklenmiyor veya Cihaza Eri�im �zniniz Yok';
      ShowMessage('Kay�t Cihaz� Desteklenmiyor veya Cihaza Eri�im �zniniz Yok');
    end;
    end;
  end
  else
  begin
    application.Title := 'Kay�t cihaz� yok';
    ShowMessage('Kay�t cihaz� yok');
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (Mikrofon.State = TCaptureDeviceState.Stopped) then
  begin
    application.Title := GetArsHedef();
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Varsay�lan kay�t arac�n�n (mikrofon) se�imi
  Mikrofon := TCaptureDeviceManager.Current.DefaultAudioCaptureDevice;
{$IF DEFINED(ANDROID)}
{$ENDIF}

  if Assigned(Mikrofon) then
  begin
    if (Mikrofon.State = TCaptureDeviceState.Stopped) then
    begin
      application.Title := 'Kay�t Yap�l�yor';
      SetArsSesKaydiOlustur();

    end
    else
    begin
      application.Title := 'Kay�t Yok';
      Mikrofon.StopCapture; // Ses kayd�n� durdur
    end;
  end;

end;

end.
