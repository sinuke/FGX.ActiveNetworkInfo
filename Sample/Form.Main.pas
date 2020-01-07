unit Form.Main;

interface

{$SCOPEDENUMS ON}

uses
  System.Types, System.Classes, FGX.Forms, FGX.Forms.Types, FGX.Controls, FGX.Controls.Types, FGX.Layout, 
  FGX.Layout.Types, FGX.Button.Types, FGX.Button, FGX.Memo;

type
  TFormMain = class(TfgForm)
    fgMemo1: TfgMemo;
    fgButton1: TfgButton;
    procedure fgButton1Tap(Sender: TObject);
    procedure fgFormSafeAreaChanged(Sender: TObject; const AScreenInsets: TRectF);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.xfm}

uses
  System.SysUtils, FGX.Application, FGX.Dialogs, FGX.Log, FGX.ActiveNetworkInfo.Android;

procedure TFormMain.fgButton1Tap(Sender: TObject);
begin
  fgMemo1.Lines.Clear;
  fgMemo1.Lines.Add('CheckPermission: ' + BoolToStr(TActiveNetworkInfo.CheckPermission, True));
  fgMemo1.Lines.Add('IsConnected: ' + BoolToStr(TActiveNetworkInfo.IsConnected, True));
  fgMemo1.Lines.Add('GetTypeName: ' + TActiveNetworkInfo.GetTypeName);
  fgMemo1.Lines.Add('IsWifi: ' + BoolToStr(TActiveNetworkInfo.IsWifi, True));
  fgMemo1.Lines.Add('IsMobile: ' + BoolToStr(TActiveNetworkInfo.IsMobile, True));
end;

procedure TFormMain.fgFormSafeAreaChanged(Sender: TObject; const AScreenInsets: TRectF);
begin
  Padding.Top := AScreenInsets.Top;
end;

end.
