unit Main_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Help1: TMenuItem;
    Options1: TMenuItem;
    New1: TMenuItem;
    N1: TMenuItem;
    Open1: TMenuItem;
    N2: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N3: TMenuItem;
    Exit1: TMenuItem;
    About1: TMenuItem;
    RichEdit1: TRichEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Deletelocalregistrationkey1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Deletelocalregistrationkey1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OpenFileName : string;
  end;

var
  frmMain: TfrmMain;

implementation

uses enigma_ide, Nag_unit;

{$R *.dfm}

procedure TfrmMain.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.About1Click(Sender: TObject);
begin
  ShowMessage('This is Enigma test application!');
end;

procedure TfrmMain.Open1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    OpenFileName := OpenDialog1.FileName;
    RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TfrmMain.Save1Click(Sender: TObject);
begin
  // The crypted secion #1 will locked Save possibility,
  // if the application is not regestered yet then save
  // dialog will not be shown...

  {$IFDEF WIN64}
  EP_Marker('reg_crypt_begin1');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_begin1.inc}
  {$ENDIF}

  if OpenFileName <> '' then RichEdit1.Lines.SaveToFile(OpenFileName);

  {$IFDEF WIN64}
  EP_Marker('reg_crypt_end1');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_end1.inc}
  {$ENDIF}
end;

procedure TfrmMain.SaveAs1Click(Sender: TObject);
begin
  // The crypted secion #2 will locked Save As possibility,
  // if the application is not regestered yet then save
  // dialog will not be shown...

  {$IFDEF WIN64}
  EP_Marker('reg_crypt_begin2');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_begin2.inc}
  {$ENDIF}

  SaveDialog1.FileName := OpenFileName;
  if SaveDialog1.Execute then
  begin
    OpenFileName := SaveDialog1.FileName;
    RichEdit1.Lines.SaveToFile(OpenFileName);
  end;

  {$IFDEF WIN64}
  EP_Marker('reg_crypt_end2');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_end2.inc}
  {$ENDIF}
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  if not EP_RegLoadAndCheckKey then
  begin
    frmNag.ShowModal;
  end;

  // There will be our nice trick, we will generate registration keys for
  // unlocking only #1 and #2 crypted sections, but if anybody will try to
  // crack it and will try to encrypt all sections then application will
  // just terminated

  {$IFDEF WIN64}
  EP_Marker('reg_crypt_begin3');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_begin3.inc}
  {$ENDIF}

  ExitProcess(0);

  {$IFDEF WIN64}
  EP_Marker('reg_crypt_end3');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_end3.inc}
  {$ENDIF}
end;

procedure TfrmMain.Deletelocalregistrationkey1Click(Sender: TObject);
begin
  // This function deletes registration key from sources...
  // Use it for test possibilities
  EP_RegDeleteKey;
end;

end.
