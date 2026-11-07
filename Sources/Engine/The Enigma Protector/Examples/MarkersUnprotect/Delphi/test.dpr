program test;

uses
  Windows,
  {$IFDEF WIN64}
  enigma_ide in '..\..\..\EnigmaSDK\Delphi\enigma_ide.pas',
  {$ENDIF}
  SysUtils;

begin
  {$IFDEF WIN64}
  EP_Marker('unprotected_begin');
  {$ELSE}
  {$I ..\..\..\EnigmaSDK\Delphi\unprotected_begin.inc}
  {$ENDIF}

  // This message will occur only in unprotected version of module
  MessageBox(0, 'If you are seeing this message then the module is not protected!', 'Application', 0);

  {$IFDEF WIN64}
  EP_Marker('unprotected_end');
  {$ELSE}
  {$I ..\..\..\EnigmaSDK\Delphi\unprotected_end.inc}
  {$ENDIF}

  // This message will always occur
  MessageBox(0, 'If you did not see any messages then the module is protected!', 'Application', 0);
end.
 