program test;

uses
  Windows,
  {$IFDEF WIN64}
  enigma_ide in '..\..\..\EnigmaSDK\Delphi\enigma_ide.pas',
  {$ENDIF}
  SysUtils;

begin
  MessageBox(0, #10#13'This message always appears on application start!' +
                #10#13'You can register it by means Simple_Key.reg file.' +
                #10#13, 'Application', 0);


  {$IFDEF WIN64}
  EP_Marker('reg_crypt_begin1');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_begin1.inc}
  {$ENDIF}
  MessageBox(0, #10#13'This message appears only if application is registered' +
                #10#13'and section #1 unlocked by registration key' +
                #10#13, 'Application', 0);
  {$IFDEF WIN64}
  EP_Marker('reg_crypt_end1');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_end1.inc}
  {$ENDIF}

  {$IFDEF WIN64}
  EP_Marker('reg_crypt_begin2');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_begin2.inc}
  {$ENDIF}
  MessageBox(0, #10#13'This message appears only if application is registered' +
                #10#13'and section #2 unlocked by registration key' +
                #10#13, 'Application', 0);
  {$IFDEF WIN64}
  EP_Marker('reg_crypt_end2');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_end2.inc}
  {$ENDIF}

  {$IFDEF WIN64}
  EP_Marker('reg_crypt_begin3');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_begin3.inc}
  {$ENDIF}
  MessageBox(0, #10#13'This message appears only if application is registered' +
                #10#13'and section #3 unlocked by registration key' +
                #10#13, 'Application', 0);
  {$IFDEF WIN64}
  EP_Marker('reg_crypt_end3');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_end3.inc}
  {$ENDIF}

  {$IFDEF WIN64}
  EP_Marker('reg_crypt_begin4');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_begin4.inc}
  {$ENDIF}
  MessageBox(0, #10#13'This message appears only if application is registered' +
                #10#13'and section #4 unlocked by registration key' +
                #10#13, 'Application', 0);
  {$IFDEF WIN64}
  EP_Marker('reg_crypt_end4');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_end4.inc}
  {$ENDIF}

  {$IFDEF WIN64}
  EP_Marker('reg_crypt_begin5');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_begin5.inc}
  {$ENDIF}
  MessageBox(0, #10#13'This message appears only if application is registered' +
                #10#13'and section #5 unlocked by registration key' +
                #10#13, 'Application', 0);
  {$IFDEF WIN64}
  EP_Marker('reg_crypt_end5');
  {$ELSE}
  {$I ..\..\..\..\EnigmaSDK\Delphi\reg_crypt_end5.inc}
  {$ENDIF}
end.
 