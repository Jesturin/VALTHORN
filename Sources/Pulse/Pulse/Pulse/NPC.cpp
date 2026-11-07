#include "StdAfx.h"
#include "NPC.h"
#include "Interface.h"
#include "Server.h"
#include "Tools.h"

void __cdecl Mods::NPC::SendCreate(void *pPlayer, BYTE bType, const char* sFormat, int nID, WORD wIndex, BYTE bShape, int nX, int nY, int nZ, WORD wDirection, unsigned long iGState, DWORD nFlagItem)
{
	Server::CPlayer::Write(pPlayer, bType, "dwbdddwId", nID, wIndex, bShape, nX, nY, nZ, wDirection, (unsigned __int64)iGState, nFlagItem);
}

void __cdecl Mods::NPC::SendCreateInSight(void *pNPC, BYTE bType, const char* sFormat, int nID, WORD wIndex, BYTE bShape, int nX, int nY, int nZ, WORD wDirection, unsigned long iGState, DWORD nFlagItem)
{
	Server::CChar::WriteInSight(pNPC, bType , "dwbdddwId", nID, wIndex, bShape, nX, nY, nZ, wDirection, (unsigned __int64)iGState, nFlagItem);
}
