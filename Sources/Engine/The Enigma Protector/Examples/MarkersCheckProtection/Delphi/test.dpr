program test;

uses
  Windows,
  {$IFDEF WIN64}
  enigma_ide in '..\..\..\EnigmaSDK\Delphi\enigma_ide.pas',
  {$ENDIF}
  SysUtils;

begin
  {$IFDEF WIN64}
  EP_Marker('check_protection_begin');
  {$ELSE}
  {$I ..\..\..\EnigmaSDK\Delphi\check_protection_begin.inc}
  {$ENDIF}
  
  // This message will not be shown if protection is corrupted
  MessageBox(0, 'The protection is OK!', 'Application!', 0);

  {$IFDEF WIN64}
  EP_Marker('check_protection_end');
  {$ELSE}
  {$I ..\..\..\EnigmaSDK\Delphi\check_protection_end.inc}
  {$ENDIF}
  // This message will be always shown
  MessageBox(0, 'If you did not see any message before then protection is corrupted!', 'Application', 0);
end.
 