unit u_install;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,IOUtils;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin

 if messagedlg ('Deseja instalar o serviço?', mtConfirmation, [mbOk,mbNo],0)=mrOk then

   begin

     WinExec(PAnsiChar('cmd.exe /c C:\WatchdogTMS\WatchdogTMS.exe -teste /install'), sw_hide);

   end;

end;

end.
