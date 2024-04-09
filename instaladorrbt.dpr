program instaladorrbt;

uses
  Vcl.Forms,
  u_install in '..\DCU\u_install.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
