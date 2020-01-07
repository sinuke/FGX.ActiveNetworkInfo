program ActiveNetworkInfo;

uses
  FGX.Application,
  FGX.Forms,
  Form.Main in 'Form.Main.pas' {FormMain: TfgForm},
  FGX.ActiveNetworkInfo.Android in '..\Class\FGX.ActiveNetworkInfo.Android.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
