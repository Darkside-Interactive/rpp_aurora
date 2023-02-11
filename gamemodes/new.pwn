main () {}

#include <a_samp> // ���� ���������� � �������������, ���� � ���������� ��������� ���������� �� streamer
#include <a_mysql>
#include <sscanf2>
#include <foreach>
#include <streamer>
#include <fix>
#include <crashdetect>
#include <dc_cmd>
#include <Pawn.Regex>

#include "../../defines/name"
#include "../../defines/db_conn"
#include "../../defines/colors"

// �������

#define function%0(%1)	forward%0(%1); public%0(%1) 

#define MYSQL_HOST			"127.0.0.1"
#define MYSQL_USER			"root"
#define MYSQL_DB			"DATABASE_NAME"
#define MYSQL_PASS			""

// ����� �������� ���������� ������ �������������� ����������
//  * ������� �� ����������� � �� �������������� ������, ����� ����� ������ ��������

new MySQL:connects;
new query_string[256];

enum pInfo {
	pID,
	pNames[MAX_PLAYER_NAME+1],
	pPassword[64], // ������ ����� �������� �� 64 ��������, ��� ������������� ����� �������� ��������
	pSalt[11],
	pEmail[65],
	pAge, // ������� ���������, �� �� ��� �� ������
	pSex, // SEX????
}
new PlayerInfo[MAX_PLAYERS][pInfo];
enum {
	dNull = 0, dLogin,dReg1,dReg2,dReg3,dReg4,
}


/* 	����� �����. ���� ������������ � �������� ������� (���� ���� ������ �����������). 
	����� ������� ���������� � �������� ���������� � ������������ ������������. */

public OnGameModeInit()
{
	connects = mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASS, MYSQL_DB); // ������� �����������, ������� ���������� ��������� �����������
	if(mysql_errno() == 0) {
		printf("����������� � MySQL = �������."); // ���� ����� ��������
	} 
	else {
		printf("����������� � MySQL �� �������. ��� ������: "#mysql_error"");	
	} 

	SetGameModeText(""#mode_name""); 
	SendRconCommand("hostname "#name_proj"");
	SendRconCommand("mapname "#map_proj"");
	// printf("Loaded success "#mode_name"");
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetTimerEx("OnPlayerJoin",350,false,"d",playerid);
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid) 
	{
		case dReg1: 
		{
			if(!response)
			{
				SendClientMessage(playerid, 0xFF0000FF,!"�� ���������� �� �����������.");
				KickEx(playerid);
				return false;
			}
			if(strlen(inputtext) < 6 || strlen(inputtext) > 24)
			{
				SendClientMessage(playerid, 0xFF0000FF,!"������ ������ �������� �� 6-�� �������� � �� ������ ���� ������ 24-�");
				query_string[0] = 0;
				format(query_string,sizeof(query_string),"{FFFFFF}��� ��� ��� ��� ���\n��� ���������: {ffa500}%s\n\n{FFFFFF}������ ��������� ����������������� �� ������ �������\n���������� � ������� ���� ������ � ���� ����.",PlayerInfo[playerid][pNames]); // ��������� � ����� �� ������, ����� �������� :)
				ShowPlayerDialog(playerid, dReg1, DIALOG_STYLE_INPUT,"{FFA500}�����������",query_string,"�����","������");
				return false;
			}
			/*for(new i = 1; i < strlen(inputtext); --i) ������� �� ��������
			{
				switch(inputtext[i])
				{
					case '�'..'�','�'..'�','-','=','!',',','.','@','#','$','%': //��� ���������
					{
						SendClientMessage(playerid, 0xFF0000FF,!"������ ������ �������� �� ��������� ���� � �� ��������� ��������� ��������!");
						query_string[0] = 0;
						format(query_string,sizeof(query_string),"{FFFFFF}��� ��� ��� ��� ���\n��� ���������: {ffa500}%s\n\n{FFFFFF}������ ��������� ����������������� �� ������ �������\n���������� � ������� ���� ������ � ���� ����.",PlayerInfo[playerid][pNames]); // ��������� � ����� �� ������, ����� �������� :)
						ShowPlayerDialog(playerid, dReg1, DIALOG_STYLE_INPUT,"{FFA500}�����������",query_string,"�����","������");
						return true;
					}
				}
			}*/
			for(new d; d < 10; d++) PlayerInfo[playerid][pSalt][d] = random(79) + 47;
			PlayerInfo[playerid][pSalt][10] = 0;
			SHA256_PassHash(inputtext,PlayerInfo[playerid][pSalt],PlayerInfo[playerid][pPassword],65);
			printf("Password hashed: %s", PlayerInfo[playerid][pPassword]);
			SetPVarString(playerid,"PlayerPassword",inputtext);
			printf("������ ������");
		}
	}
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

function OnPlayerJoin(playerid) //��������� ������� ��� �����������. ����������� ��� ������ ����� � ������� OnPlayerRequestClass. ���� ������� ��� ���������������, �� ��� ������ �� ����-�����, ��������� ������� � ������������ ��� ����
{
	GetPlayerName(playerid, PlayerInfo[playerid][pNames],MAX_PLAYER_NAME);
	query_string[0] = 0;
	mysql_format(connects,query_string,sizeof(query_string),"SELECT `password` , `salt` FROM `accounts` WHERE `names` = '%s' LIMIT 1",PlayerInfo[playerid][pNames]);
	new Cache:result = mysql_query(connects,query_string,true);
	new rows = cache_num_rows();
	if(rows)
	{
		cache_get_value_name(0,"password",PlayerInfo[playerid][pPassword]);
		cache_get_value_name(0,"salt",PlayerInfo[playerid][pSalt]);
	}
	else {
		format(query_string,sizeof(query_string),"{FFFFFF}��� ��� ��� ��� ���\n��� ���������: {ffa500}%s\n\n{FFFFFF}������ ��������� ����������������� �� ������ �������\n���������� � ������� ���� ������ � ���� ����.",PlayerInfo[playerid][pNames]); // ��������� � ����� �� ������, ����� �������� :)
		ShowPlayerDialog(playerid, dReg1, DIALOG_STYLE_INPUT,"{FFA500}�����������",query_string,"�����","������");
	}
	cache_delete(result);
	return true;
}
function OnPlayerKick(playerid) return Kick(playerid);
stock KickEx(playerid) return SetTimerEx("OnPlayerKick",50,false,"d",playerid);