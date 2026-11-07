#include "StdAfx.h"
#include "Packets.h"
#include "Interface.h"
#include "Deflector.h"
#include "Deflection.h"
#include "Tools.h"
#include "Server.h"

CREATE_INTERFACE(Packets)

Packets::Packets()
{
}

Packets::~Packets()
{
}

void __cdecl Mods::Packets::WriteCode(void *Socket, char Type, char* format, long ProtocolVersion, char Code, long TimeStamp, long TimeStart, long System, unsigned long Event, char ServerID, char Age, char Country)
{
	Server::CSocket::Write(Socket, 0x2a, "dbdddIbbb", ProtocolVersion, Code, TimeStamp, TimeStart, System, (unsigned __int64)Event, ServerID, Age, Country);
}
