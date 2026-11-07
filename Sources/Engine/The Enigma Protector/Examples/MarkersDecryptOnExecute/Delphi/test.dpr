program test;

uses
  Windows,
  {$IFDEF WIN64}
  enigma_ide in '..\..\..\EnigmaSDK\Delphi\enigma_ide.pas',
  {$ENDIF}
  SysUtils;

begin
  MessageBox(0, 'Application is started!'#13#10'The code between decrypt_on_execute markers is enciphered now!', 'Test', 0);
  // Start of code which is hidden in memory
  {$IFDEF WIN64}
  EP_Marker('decrypt_on_execute_begin');
  {$ELSE}
  {$I ..\..\..\EnigmaSDK\Delphi\decrypt_on_execute_begin.inc}
  {$ENDIF}

  MessageBox(0, 'The message from deciphered code!', 'Test', 0);


  {$IFDEF WIN64}
  EP_Marker('decrypt_on_execute_end');
  {$ELSE}
  {$I ..\..\..\EnigmaSDK\Delphi\decrypt_on_execute_end.inc}
  {$ENDIF}
end.
 