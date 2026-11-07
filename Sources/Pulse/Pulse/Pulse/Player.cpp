#include "StdAfx.h"
#include "Player.h"
#include <time.h>
#include "Interface.h"
#include "Server.h"
#include "Tools.h"

void __cdecl Mods::Player::SendMState(void *player, unsigned char Type, char* format, unsigned long mState)
{
	Server::CPlayer::Write(player, Type, "I", (unsigned __int64)mState);
}

void __cdecl Mods::Player::SendGState(void *player, unsigned char Type, char* format, long id, unsigned long gState)
{
	Server::CPlayer::Write(player, Type, "dI", id, (unsigned __int64)gState);
}

void __cdecl Mods::Player::SendGStateInSight(void *player, unsigned char Type, char* format, long id, unsigned long gState)
{
	Server::CChar::WriteInSight(player, Type, "dI", id, (unsigned __int64)gState);
}

Mods::Player::BASE_STATS Mods::Player::g_BaseStats[] =
{
	18, 16, 8, 8, 10, 180, 120,		// knight
	8, 10, 18, 16, 8, 170, 140,		// mage
	14, 10, 8, 10, 18, 160, 160,	// archer
	14, 10, 8, 10, 18, 160, 160,	// thieft
	8, 10, 20, 14, 8, 170, 140,		// shaman
};

unsigned int Mods::Player::g_FinalResistDivider[] =
{
	4, 1, 2, 2, 1,
};