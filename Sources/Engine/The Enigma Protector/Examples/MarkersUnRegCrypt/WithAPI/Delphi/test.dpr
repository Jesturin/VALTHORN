program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows,
  enigma_ide in '..\..\..\..\EnigmaSDK\Delphi\enigma_ide.pas';

begin
  {$IFDEF WIN64}
  EP_Marker('unreg_crypt_begin1');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\unreg_crypt_begin1.inc}
  {$ENDIF}

  if EP_RegLoadAndCheckKey then
  begin
    MessageBox(0, 'Application is registered!'#13#10 +
                  'The registration key created with the Unlock Section #1 disabled!'#13#10 +
                  'Marker unreg_crypt1 is deciphered', 'Application', 0);
  end else
  begin
    MessageBox(0, 'Application is not registered!'#13#10 +
                  'Marker unreg_crypt1 is deciphered', 'Application', 0);
  end;
  
  {$IFDEF WIN64}
  EP_Marker('unreg_crypt_end1');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\unreg_crypt_end1.inc}
  {$ENDIF}

  {$IFDEF WIN64}
  EP_Marker('reg_crypt_begin1');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_begin1.inc}
  {$ENDIF}

    MessageBox(0, 'Application is registered!'#13#10 +
                  'The registration key created with the Unlock Section #1 enabled!'#13#10 +
                  'Marker reg_crypt1 is deciphered', 'Application', 0);
  {$IFDEF WIN64}
  EP_Marker('reg_crypt_end1');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_end1.inc}
  {$ENDIF}
end.
