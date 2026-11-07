unit test_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  {$IFDEF WIN64}
  enigma_ide, StdCtrls in '..\..\..\EnigmaSDK\Delphi\enigma_ide.pas',
  {$ENDIF}
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnShowMessage: TButton;
    Label2: TLabel;
    Label3: TLabel;
    btnClose: TButton;
    procedure btnCloseClick(Sender: TObject);
    procedure btnShowMessageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btnShowMessageClick(Sender: TObject);
begin
  {$IFDEF WIN64}
  EP_Marker('run_once_begin');
  {$ELSE}
  {$I ..\..\..\EnigmaSDK\Delphi\run_once_begin.inc}
  {$ENDIF}

  // This message will be shown only once per execution
  ShowMessage('This message is under RunOnce marker');

  {$IFDEF WIN64}
  EP_Marker('run_once_end');
  {$ELSE}
  {$I ..\..\..\EnigmaSDK\Delphi\run_once_end.inc}
  {$ENDIF}
end;

end.
