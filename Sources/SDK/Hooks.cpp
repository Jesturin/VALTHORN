#include "StdAfx.h"
#include "Hooks.h"

#include "Interface.h"

#include "Deflector.h"
#include "Deflection.h"
#include "Server.h"

void __fastcall Hooks::CSocket::Process(void *Socket, void *_edx, const char* Data)
{
	Interface<IDeflector> Deflector;
	if (!Deflector->Forward(Deflection::CSocketProcess, Socket, Data))
		Server::CSocket::Process(Socket, Data);
}

void __fastcall Hooks::CMonster::Blob(void *Monster, void *_edx, unsigned char)
{
	Interface<IDeflector> Deflector;

	unsigned long _Ebp;
	__asm mov eax, [ebp]
	__asm mov _Ebp, eax

	__asm
	{
		push 0
		mov eax, _Ebp
		mov ecx, [eax-0x44]
		mov edx, [ecx]
		call [edx+0xbc]
	}

	Deflector->Forward(Deflection::MonsterBlob, Monster);
}
