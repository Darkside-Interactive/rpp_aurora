//========= Copyright (c) 2017-2023 Darkside Interactive, Ltd. All rights reserved. ============//
//
// ����: ������� ��� ������
//
//==============================================================================================//

// main(){}
/*
           _ _ _ _ _ _		_ _ _ _ _ _ _		__ 					   __
		 _|	 _ _ _ _ _|    |  _ _ _ _ _  |	   |_ |_   			 	 _|  |
	   _|  _|		  	   | |		   | |		 |_ |_             _| _|
	  |	 _|                | |         | |		   |_ |_ 		 _| _|
      |	|	 _ _ _ _ _     | |_ _ _ _ _| | 		     |_ |_     _| _| 
	  |	|	| _ _ _   |    |  _ _ _ _ _  |			   |_ |___| _|
	  |	|			| |	   | | 		   | |			     |_   _|
	  |	|_			| |	   | |		   | |		     	   | |
	  |_  |_ _ _ _ _| |    | |         | |                 | |
		|_ _ _ _ _ _ _|	   |_|         |_|			       |_|

		 _ _ _ _ _ _ _ 	    _ _ _ _ _ _ _ 
		|  _ _ _ _ _ _|    |  _ _ _ _ _  |
		| | 			   | |		   | | 
		| |_ _ _ _ _ _	   | |		   | |
		|  _ _ _ _ _ _|	   | |_ _ _ _ _| |
		| |				   |  _ _ _ _ _  |
		| |_ _ _ _ _ _	   | |		   | |
		|_ _ _ _ _ _ _|	   |_|		   |_|
*/	




//! ���� ��� ��� ����:
//! ���� � ������� ������� ���� �� ������ �� ��� ������ ����� playerid
//! ������ ������
//! ������� ����� ���������

@___If_u_can_read_this_u_r_nerd();
@___If_u_can_read_this_u_r_nerd() {
	#emit stack 0x7FFFFFFF
	#emit inc.s cellmax
	static const ___[][] = {"AntiDeAMX"};
	#emit retn
	#emit load.s.pri ___
	#emit proc
	#emit proc
	#emit fill cellmax
	#emit proc
	#emit stor.alt ___
	#emit strb.i 2
	#emit switch 4
	#emit retn

	L1:
		#emit jump L1
		#emit zero cellmin
}
AntiDeAMX()
{
	new a[][] = {
		"Unarmed (Fist)",
		"Brass K"
	};

	new b;
	#emit load.pri b
	#emit stor.pri b

 	#pragma unused a
  	#pragma dynamic 1003
  	#pragma warning disable 219
   	//#pragma disablerecursion
}
#if !defined IsValidVehicle
     native IsValidVehicle(vehicleid);
#endif
#include <a_samp>
#define MYSQL_R41_4 true
#if MYSQL_R41_4 == true
	#include <a_mysql>
#endif

#undef MAX_PLAYERS
#define MAX_PLAYERS (6)

#pragma tabsize 0
#define STREAMER_USAGE 
#define MAILER_PHP_SCRIPT

#if defined MAILER_PHP_SCRIPT
	#define MAILER_URL "dimamins.beget.tech/mailer.php"
	#define MAILER_MAX_MAIL_SIZE (1024) 
	#include "mailer"
#endif


// #define MALLOC_MEMORY (32768)
// #define YSI_YES_HEAP_MALLOC

//! ��������� ������ ��� ������� ������� � ����������� y_asi
//! �� � ��� � ���� 

#if defined YSI_YES_HEAP_MALLOC
	#define jitter_use
	#include "YSI_Coding\y_malloc"
#endif //! � ��� �� ������ �������� �� �����

#if defined jitter_use
	#if defined YSI_NO_HEAP_MALLOC
		#undef jitter_use
		#include "YSI_Coding\y_malloc"
		#tryinclude "YSI\jit.inc"
	#endif
#endif //! ��� __no_heap_mal. �� �������� jitter.inc

#include <sscanf2>
#include <foreach>

#if defined STREAMER_USAGE 
	#tryinclude <streamer> 
#endif	
	

//=================================[THIS IS INCLUDES]==================================//

#include <sscanf2>
#include <foreach>
#include <fix>
#include <crashdetect> 
#include <dc_cmd>
#include <Pawn.Regex>

//=================================[DIRECTORY | SYSTEMS | INCLUDES]==================================//

#include "../../defines/db_conn" 
#include "../../defines/colors" 
#include "../../defines/macroses" 
#include "../../defines/systems/capture_natives/natives" 
#include "../../defines/objs/autoLoader.inc"
// #include "../../defines/systems/autoschool/main"

//=================================[SERVER CONFIG]==================================//
#define function%0(%1)					forward%0(%1); public%0(%1)
#define pi 								PlayerInfo
#define f%0%1							format(%0,sizeof(%0), %1
#define IsAdmin(%0) 					if(PlayerInfo[playerid][pAdmin] < %0) return 1
#define GetName(%0)						pi[%0][pNames]
#define randEx(%0,%1) 					(random(%1-%0)+%0)
#define isConn(%0)						(!IsPlayerConnected(%0))
#define isValidLicID(%0)				(!(1 <= (%0) <= 5))

// #define gettypelicense(%0)				do{\
// 	for(new i = 5; i > 0; i--) pi[%0][pDriveLic][i] \
// }while(false)


#define SERVER_NAME 					"Aurora RolePlay"
#define SERVER_VERSION 					"Aurora [v."MODE_VERS"]"
#define MODE_VERS						"0.1.1.0"
#define SERVER_MAP                      "South Ural"
#define SERVER_WEBSITE 					"rpp-aurora.ru/"
#define PRIME_HOST_PAGE 				"prime-host.pro/"
#define SERVER_FORUM                    "/"
#define SERVER_GROUP                    "vk.com/rpp_aurora"
#define SERVER_FREE_GROUP               "vk.com/rpp_aurora"
#define SERVER_LANGUAGE                 "Russian/English/Belarussian"
#define SERVER_MAIL_ADDRESS				"support@rpp-aurora"
#define TEST_EMAIL						"dimamironov1337228@gmail.com"

//=================================[FULL ACCESS CONFIG]==================================//
#define NAME_FULL_ACCESS_1				"Jei_Kilo"
#define NAME_FULL_ACCESS_2				"I]C[E_the_Bre]a[ker"
#define NAME_FULL_ACCESS_3				"Name_Subname"
#define NAME_FULL_ACCESS_4				"Name_Subname"


//=================================[ADMIN CONFIG]==================================//
#define ADMIN_NOT_LOGGED       		    "{0093ff}[ADM]: {FFFFFF}�� �� ������������. ����������� {33CCFF}/alog"
#define ADMIN_ALREADY_LOGGED 	        "{0093ff}[ADM]: {FFFFFF}�� ��� � �������!"
#define PLAYER_INVALID 					"{F04245}[������ ADM]: {FFFFFF}����� �� �������."
#define PLAYER_NOT_LOGGED 				"{F04245}[������ ADM]: {FFFFFF}����� �� �����������."

//=================================[PLAYER CONFIG]==================================//
#define NOT_AVAILABLE 					"{F04245}[������]: {FFFFFF}��� ���������� ������ �����������!"
#define NOT_ENOUGH_MONEY                "{F04245}[������]: {FFFFFF}� ��� ������������ ������� �� �����."
#define SERVER_CLOSED 					"{F04245}[������]: {FFFFFF}������ ������ ����������! ��� ������ �� ����, ������� {0093ff}/q(uit)"
#define LOG_TIMED_OUT					"{F04245}[������]: {FFFFFF}����� �� ����������� �������! ��� ������ �� ����, ������� {0093ff}/q(uit)"
#define LICENSE_INVALID					"{F04245}[������]: {FFFFFF}ID �������� �� ����� ���� ������ 0 � ������ 5"

new query_string[356];

// ������� ��������


//

// enum lICS {
// 	CARL = 0,
// 	TRUCKL = 1,
// 	TRAINL = 2,
// 	AEROL = 3
// }
//! ���� ���� ����� �������� ����. ����� ������� ������ ����������� �� ������ ��������� ����

enum pInfo {
	pID,
	pNames[MAX_PLAYER_NAME+1],
	pPassword[65], 
	pSalt[11],
	pIP[16],
	pRegData[13],
	pLastIP[16],
	pEmail[32],
	pEmailConfirmed,
	pAdmin,
	pSex,
	pSkin,
	pMoney,
	pLevel,
	pShowName,
	pHungryBar,
	pShowDocuments,
	sdTrade,
	pEmailAuth,
	pVkontakte,
	pLanguage,
	pGoogle,
	pWantedLevel,
	pPassport,
	pDriveLic[5], // �������� ������������ 0 id -����, 1 -�����������, 2 -���������, 3-�������� ��������� \ �����. 4 - ������, 5 - ������
	pDriveLics[20], // ������ � ���� ������ ���������� � ��������� (������ ��������� � ������� ��)

}
new PlayerInfo[MAX_PLAYERS][pInfo];

enum  {
    ADM_NONE = 0,
    ADM_HELPER = 1,
    ADM_MODER = 2,
    ADM_OLDER_MODER = 3,
    ADM_ADMIN = 4,
    ADM_OLDER_ADMIN = 5,
    ADM_DEPUTY_CHIEF = 6,
    ADM_CHIEF = 7,
	ADM_FOUNDER = 8,
	ADM_DEV = 9
}
//						[BOOLEANS]
new 
	bool:playerLoggedStatus[MAX_PLAYERS char]; 


new inadmcar[MAX_PLAYERS char];
new sstring[512]; // позже нужно будет убрать и переделать в угоду стека
new PlayerAFK[MAX_PLAYERS];
new oldhour; //? ���������� ��������� �������
new timedata[5]; //? ���������� ������� � ����
enum {
	dNull = 0, 
	dLogin = 1, dReg1 = 2, dReg2 = 3, dReg3 = 4, d_Log = 5,
	dMM = 6, dSECURE_SETTINGS = 7, d_PLAYER_SETTINGS = 8
}

public OnGameModeInit()
{
	ConnectSQL();
	AntiDeAMX();

	new MySQLOpt: option_id = mysql_init_options();
	new currenttime = GetTickCount();

	mysql_set_option(option_id, AUTO_RECONNECT, true);
	SetGameModeText(""#SERVER_VERSION""); 
	SendRconCommand("hostname "#SERVER_NAME"");
	SendRconCommand("mapname "#SERVER_MAP"");

	printf("OnGameModeInit ���������� �� %i ms", GetTickCount() - currenttime);
	gettime(timedata[0], timedata[1]);
	// oldhour = timedata[0]; //! ��������� ��������� ������� | p.s. �������� � ����� ������ ���� (���� �������)

	DisableInteriorEnterExits();
	EnableStuntBonusForAll(0); 

	//? timers
	SetTimer("AFKSystemUpdates", 1000, true); 
	return 1;
}

public OnGameModeExit()
{
	mysql_close(db);
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	return 1;
}

public OnPlayerConnect(playerid)
{
	SetTimerEx("@_mysqlPlayerAccountGet", 1000, 0, "i", playerid); //! �������� ���������

	GetPlayerName(playerid, PlayerInfo[playerid][pNames], MAX_PLAYER_NAME);
	GetPlayerIp(playerid, PlayerInfo[playerid][pIP], 16);
	ResetVariables(playerid);

	//! ����� �������� ���� ��� ���������� ����� � ��

	if(IsLoginInvalid(GetName(playerid))) {
		Error(playerid, !"���� ��� �������� ����������� ������� ��� �����. ����������� ������: [���_�������]");
		Kick(playerid);
	}
	SEND_CM(playerid, COLOR_DBLUE, !"����� ���������� �� "SERVER_NAME"!");

	restoreDateOfPlayer(playerid);
	/*new code = 999 + random(9000);
	format(sstring, sizeof(sstring), "��� ��� �������������: %d", code);
	SendMail(TEST_EMAIL, SERVER_MAIL_ADDRESS, SERVER_NAME, "��� ��� ������������� �����������", sstring);
	printf("22:%s", (SHA256_PassHash("AB00ABF5809A496150A22AF43047C1E3D8CAD4CC2B7336E471953BD9D5AF6FA1", "1wv2d<A^_5")));*/
	return 1;
}

public OnPlayerDisconnect(playerid, reason) {
	if(!playerLoggedStatus{playerid}) return 1; 
	else SavePlayer(playerid);
	PlayerAFK[playerid] = -2;

	if(inadmcar[playerid] != -1) return DestroyVehicle(inadmcar[playerid]), inadmcar[playerid] = 0;
	return 1;
}

public OnPlayerSpawn(playerid) {
	if(!playerLoggedStatus{playerid}) return Error(playerid, !"�� �� ��������������!"), Kick(playerid);

	SetPlayerSkin(playerid, pi[playerid][pSkin]);
	SetPlayerScore(playerid, pi[playerid][pLevel]);
	SetPlayerWantedLevel(playerid, pi[playerid][pWantedLevel]);

	SetCameraBehindPlayer(playerid);
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

public OnPlayerText(playerid, text[]) {
    if(!playerLoggedStatus{playerid}) return 0;
	
	sstring[0] = EOS;
	if(strlen(text) < 64) {
		format(sstring, sizeof(sstring), "%s [%d] �������: %s", GetName(playerid), playerid, text);
		ProxDetector(20.00, playerid, sstring, format_white, format_white, format_white, format_white, format_white);
	 	SetPlayerChatBubble(playerid, text, format_white, 20.0, 7500);
		
		if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) ApplyAnimation(playerid, "PED", "IDLE_chat", 4.1, 0, 1, 1, 1, 1), SetTimerEx("@StopAnimation", 3200, false, "d", playerid);
	} else Error(playerid, "[������]:{FFFFFF} ������� ������� ���������!");
	return 0;
}
public OnPlayerCommandText(playerid, cmdtext[]) return 0;
public OnPlayerCommandReceived(playerid, cmdtext[]) return 1;
public OnPlayerCommandPerformed(playerid, cmdtext[], success) {
	if (!success || success == -1) 
		Warning(playerid, !"{941000}[������]: {FFFFFF}�������� �������.");
	return 1;
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
	if(oldstate == PLAYER_STATE_DRIVER) {
		if(inadmcar[playerid] != -1) {
			DestroyVehicle(inadmcar[playerid]);
			inadmcar[playerid] = 0;
		}
	}
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
	SetSpawnInfo(playerid, 0, 0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0);
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
	PlayerAFK[playerid] = 0;
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
//! ��� ��� ����� ������� � ������ �� ���������� 
//! ��������� ���� \defines\systems\autoschool\main.inc
//! � ������ �� ��� ����� �� ������
//! � ������ ���� � ������ ��������, ��������: �����������, ����� � �.�
stock LicType(id) {
	new type[16];
	switch(id) {
		case 1: {type="����";}
		case 2: {type="�����������";}
		case 3: {type="��������";}
		case 4: {type="������";}
		case 5: {type="������";}
		default: {type="None";}
	}
	return type;
}
stock GiveLic(playerid,id) {
	if (isValidLicID(id)) return 1;

	pi[playerid][pDriveLic][id] = 1;

	sstring[0] =
	query_string[0] = EOS;

	format(sstring, sizeof(sstring),"%i,%i,%i,%i,%i", pi[playerid][pDriveLic][0], pi[playerid][pDriveLic][1], pi[playerid][pDriveLic][2], pi[playerid][pDriveLic][3], pi[playerid][pDriveLic][4]);
	mysql_format(db, query_string, sizeof(query_string),"UPDATE `accounts` SET `licenses`='%s' WHERE `names`='%e'",sstring,GetName(playerid));
	mysql_tquery(db, query_string, "", "");

	printf("%s(%d) ������� ������� ����� � licid %d � � ����� %s", GetName(playerid), playerid, id, LicType(id));

	return 1;
}

CMD:agivelic(playerid, params[]) {
	new LicID, TargetID;

	IsAdmin(ADM_MODER);

	if(sscanf(params, "ii", TargetID, LicID)) Info(playerid, !"[����������]:{FFFFFF} /agivelic (playerid) (licid)");
	else if(isConn(TargetID)) 
		return Error(playerid, PLAYER_INVALID);
	else if (!(1 <= (LicID) <= 5))
		return Error(playerid, LICENSE_INVALID);
	
	sstring[0] = EOS;
	format(sstring, sizeof(sstring), "[����������]:{FFFFFF} �� ������� ������ ������ %s (%d) �������� (LicID: %d)",GetName(TargetID),TargetID,LicID,LicType(LicID));
	Info(playerid, sstring);

	GiveLic(TargetID, LicID);

	return 1;
}

CMD:giveweap(playerid, params[]) {
	new weaponID, ammoValue;
	if(sscanf(params, "iii", params[0], weaponID, ammoValue)) Info(playerid, !"[����������]:{FFFFFF} /giveweap [playerid] [weaponid] [value (0-999)]");
	else if (!(0 <= (weaponID) <= 46)) return Info(playerid, !"[����������]:{FFFFFF} �������� weaponID: < 0 ���� > 46!");
	else if (!(0 <= (ammoValue) <= 999)) return Info(playerid, !"[����������]:{FFFFFF} �������� ammoValue: < 0 ���� > 999!");
	GivePlayerWeapon(params[0], weaponID, ammoValue);
	return 1;
}

CMD:plvh(playerid, params[]) {
	sstring[0] = EOS;
	IsAdmin(ADM_OLDER_MODER);
	if(sscanf(params, "dddd", params[0], params[1], params[2], params[3]))  return Log(playerid, !"[����������]:{FFFFFF} /plveh [playerid] [vehicleid] [1 color] [2 color]");
	if(playerLoggedStatus[playerid] == false) return Error(playerid, PLAYER_NOT_LOGGED);
	if(GetPlayerInterior(params[0]) != 0) return format(sstring,sizeof(sstring), !"[������ ADM]:{FFFFFF} ����� ��������� � ��������� (%d)", GetPlayerInterior(playerid)), Error(playerid, sstring), sstring[0] = EOS;
	if(GetPlayerVirtualWorld(params[0]) != 0) return format(sstring,sizeof(sstring), !"[������ ADM]:{FFFFFF} ����� ��������� � ����������� ���� (%d)", GetPlayerVirtualWorld(playerid)), Error(playerid, sstring), sstring[0] = EOS;
	if(!(400 <= params[1] <= 611)) return Error(playerid, !"[������ ADM]:{FFFFFF} �������� ID �����������: �� ������ 400 �� ������ 611");
	if(!(0 <= params[2] <= 255)) return Error(playerid, !"[������ ADM]:{FFFFFF} �������� ������� �����: �� ������ 0 �� ������ 255");
	if(!(0 <= params[3] <= 255)) return Error(playerid, !"[������ ADM]:{FFFFFF} �������� ������� �����: �� ������ 0 �� ������ 255");
	new Float:x,
		Float:y,
		Float:z;
	new Float:Angle;
	GetPlayerPos(params[0], x, y, z);
	GetPlayerFacingAngle(params[0], Angle);
	inadmcar[params[0]] = CreateVehicle(params[1], x, y, z, Angle, params[2], params[3], -1);
	PutPlayerInVehicle(params[0], inadmcar[params[0]], 0);
	return 1;
}
CMD:makeadmin(playerid, params[]) {
	new playername[24], adm_level;
	IsAdmin(ADM_FOUNDER);
	if(sscanf(params, "s[24]i", playername, adm_level)) Info(playerid, !"[����������]:{FFFFFF} �������: /makeadmin [��� ������] [������� ��������������]");
	else if(CheckExceptionName(playername)) return 0;
	else if(!(ADM_NONE <= adm_level <= ADM_DEPUTY_CHIEF)) Info(playerid, !"[����������]:{FFFFFF} �������� ������� � �������: �� ������ 1 �� ������ 6");
	query_string[0] = EOS;
	mysql_format(db, query_string, sizeof(query_string), "SELECT * FROM `admin` WHERE name = '%e'", playername);
	mysql_tquery(db, query_string , "@MakeAdmin", "isi", playerid, playername, adm_level);
	return true;
}

//? /me /todo /do /try /n /s /b /ame
CMD:me(playerid, params[]) {
	if(sscanf(params, "s[118]", params[0])) Info(playerid, !"[����������]:{FFFFFF} /me [��������]");
	sstring[0] = EOS;
	format(sstring, sizeof(sstring), "%s %s", PlayerInfo[playerid][pNames], params[0]);
	ProxDetector(20.00, playerid, sstring, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193);
	SetPlayerChatBubble(playerid, params[0], 0x00F76193, 20, 7500);
	return 1;
}
CMD:ame(playerid, params[]) {
	if(sscanf(params, "s[144]", params[0])) Info(playerid, !"[����������]:{FFFFFF} /ame [��������]");
	SetPlayerChatBubble(playerid, params[0], 0x00F76193, 20, 7500);
	return 1;
}
CMD:do(playerid, params[]) {
	if(sscanf(params, "s[116]", params[0])) Info(playerid, !"[����������]:{FFFFFF} /do [�����]");
	sstring[0] = EOS;
	format(sstring, sizeof(sstring), "%s (%s)", params[0], PlayerInfo[playerid][pNames]);
	ProxDetector(20.00, playerid, sstring, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193);
	SetPlayerChatBubble(playerid, params[0], 0x00F76193, 20, 7500);
	return 1;
}
CMD:try(playerid, params[]) {
	if(sscanf(params, "s[99]", params[0])) Info(playerid, !"[����������]:{FFFFFF} /try [�����]");
	sstring[0] = EOS;
	format(sstring, sizeof(sstring), "%s %s | %s", PlayerInfo[playerid][pNames], params[0], (!random(2)) ? ("{FF0000}��������") : ("{32CD32}������"));
	ProxDetector(20.00, playerid, sstring, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193);
	return 1;
}
CMD:todo(playerid, params[]) {
	if(sscanf(params, "s[95]", params[0])) Info(playerid, !"[����������]:{FFFFFF} /todo [�����*��������]");
	if(strlen(params[0]) > 95) Error(playerid, !"[������]:{FFFFFF} ������� ������� �����!");
	new message[96];
	strmid(message, params, 0, sizeof(message));
	new Regex:rg_todocheck = Regex_New("^[a-zA-Za-��-�.-_,\\s]{2,48}\\*[a-zA-Za-��-�.-_,\\s]{2,48}$");
	if(Regex_Check(message, rg_todocheck)) {
		new star = strfind(message, "*");
		new action[50];
		strmid(action, message, star+1, sizeof(message));
		strdel(message, star, sizeof(message));
		sstring[0] = EOS;
		format(sstring, sizeof(sstring), "- '%s' - {DE92FF}������%s %s, %s", message, (PlayerInfo[playerid][pSex] == 1) ? ("") : ("�"), PlayerInfo[playerid][pNames], action);
		ProxDetector(20.00, playerid, sstring, format_white, format_white, format_white, format_white, format_white);
	} else return Info(playerid, !"[����������]:{FFFFFF} /todo [�����*��������]");
	return 1;
}
CMD:s(playerid, params[]) {
	if(sscanf(params, "s[105]", params[0])) Info(playerid, !"[����������]:{FFFFFF} /s [�����]");
	else if (!(0 <= strlen(params[0]) <= 105)) return Warning(playerid, !"[������]:{FFFFFF} �������� ����� ������: �� ������ 0 �� ������ 105");
	else if (!strlen(params[0])) return Warning(playerid, !"[������]:{FFFFFF} �� ������ �� �����!");
	sstring[0] = EOS;
	format(sstring, sizeof(sstring), "%s [%d] ������� %s: %s", PlayerInfo[playerid][pNames], playerid, (PlayerInfo[playerid][pSex] == 1) ? ("") : ("�"), params[0]);
	ProxDetector(20.00, playerid, sstring, 0xCCCC99FF, 0xCCCC99FF, 0xCCCC99FF, 0xCCCC99FF, 0xCCCC99FF);
	if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) ApplyAnimation(playerid, "ON_LOOKERS", "shout_01", 4.1,0,0,0,0,0);
	SetPlayerChatBubble(playerid, params[0], format_white, 25, 7500);
	return 1;
}
CMD:menu(playerid) {
	sstring[0] = EOS;
	gettime(timedata[0], timedata[1]);
	format(sstring, sizeof(sstring), "{0093ff} ������� ���� | ������ �����: %02d.%02d", timedata[0], timedata[1]);
	ShowPlayerDialog(playerid, dMM, DIALOG_L, sstring, "{B03131}[1]{FFFFFF} �������� ���������\n\
		{B03131}[2]{FFFFFF} ������ ���������\n\
		{B03131}[3]{FFFFFF} ����� � ��������������\n\
		{B03131}[4]{FFFFFF} ������ �� �������\n\
		{B03131}[5]{FFFFFF} ��������� ���������\n\
		{B03131}[6]{FFFFFF} �������\n\
		{B03131}[7]{FFFFFF} ������� �����\n\
		{B03131}[8]{FFFFFF} ������� ���������\n\
		{B03131}[9]{FFFFFF} ��������: {0093FF}\n\
		{B03131}[10]{FFFFFF} ������� ����������", "�����","������");
	return 1;
}
CMD:mn(playerid) return cmd_menu(playerid);
CMD:mm(playerid) return cmd_menu(playerid);

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case dReg1: 
		{
			if(response) {
				if(!strlen(inputtext)) return SEND_CM(playerid, format_red, "�� ������ �� �����."), ShowRegDialog(playerid);
				if(!(6 <= strlen(inputtext) <= 22)) return SEND_CM(playerid, format_red, "�������� ����� ������: �� 6 �� 22 ��������."), ShowRegDialog(playerid);
				new Regex:rg_passwordcheck = Regex_New("^[a-zA-Z0-9]{1,}$");

				if(Regex_Check(inputtext, rg_passwordcheck)){ 
					new salt[11];
					for(new i = 11; i--; ) salt[i] = random(79) + 47;
                	salt[10] = 0;
					SHA256_PassHash(inputtext, salt, PlayerInfo[playerid][pPassword], 65);
					// printf("salt::%s;pass:%s", salt, PlayerInfo[playerid][pPassword]);
					strmid(PlayerInfo[playerid][pSalt], salt, 0, 11, 11);
					sstring[0] = 0;
					format(sstring, sizeof(sstring), "{FFFFFF}������� ��� {FFA500}e-mail{FFFFFF} �����, �� ������� ����� �������� ������ �������.\n���� �� ��������� ������ � ������ ��������, �� � ������� {FFA500}e-mail{FFFFFF} �� ������� ������������ ���.");
					SHOW_PD(playerid, dReg2, DIALOG_I, !"{FFFFFF}[2/4]{FFA500} �����", sstring, !"�����", !"������");	
				} else {
					ShowRegDialog(playerid), SEND_CM(playerid, format_red, "������ ����� �������� ������ �� ����� � ��������� �������� ������ ��������.");
				}
				Regex_Delete(rg_passwordcheck);
			} else {
				SEND_CM(playerid, format_red, !"�� ���������� �� �����������.");
				SHOW_PD(playerid, -1, 0, " ", " ", " ", "");
				return Kick(playerid);
			}
		}
		case dReg2:
		{
			if(!response){
				SEND_CM(playerid, format_red, !"�� ���������� �� �����������.");
				SHOW_PD(playerid, -1, 0, " ", " ", " ", "");
				return Kick(playerid);
			}
			else {
				if(!IsValidEmail(inputtext)) {
					SEND_CM(playerid, format_red, !"������������ ����� ����������� �����.");
					SHOW_PD(playerid, dReg2, DIALOG_I, !"{FFFFFF}[2/4]{FFA500} �����", sstring, !"�����", !"������");	
				}
				if(!strlen(inputtext)) {
					SEND_CM(playerid, format_red, !"�� �� ������� �����.");
					SHOW_PD(playerid, dReg2, DIALOG_I, !"{FFFFFF}[2/4]{FFA500} �����", sstring, !"�����", !"������");	
				}
				else if(IsValidEmail(inputtext) && strlen(inputtext)) {
					strmid(PlayerInfo[playerid][pEmail],inputtext,0,strlen(inputtext), 32);
					SHOW_PD(playerid, dReg3, DIALOG_L, !"{FFFFFF}[3/4]{FFA500} ���","{FFA500}1.{FFFFFF} �������\n{FFA500}2.{FFFFFF} women", !"�������", !"������");
				}
			}
		}
		case dReg3: 
		{
			if(!response) {
				SEND_CM(playerid, format_red, !"�� ���������� �� �����������.");
				SHOW_PD(playerid, -1, 0, " ", " ", " ", "");
				return Kick(playerid);
			}
			else {
				switch listitem do {
					case 0: PlayerInfo[playerid][pSex] = 1; // 1 - �������
					case 1: PlayerInfo[playerid][pSex] = 2; // 2 - �������
				}
			}
			CreateAccount(playerid);
		}
		case d_Log: {
			if(response) {
				new checkpass[65];

				// printf("salt:%s\t salt+pass:%s\n", PlayerInfo[playerid][pSalt], (SHA256_PassHash(inputtext, PlayerInfo[playerid][pSalt], checkpass, 65)));
				// printf("pass:%s", PlayerInfo[playerid][pPassword]);
				// printf("salt:%s", PlayerInfo[playerid][pSalt]);
				// printf("input:%s", inputtext);
				
			   	SHA256_PassHash(inputtext, PlayerInfo[playerid][pSalt], checkpass, 65);

				// printf("%d", strcmp(PlayerInfo[playerid][pPassword], checkpass));

				// printf("checkpass:%s", checkpass);

			   	if(!strcmp(PlayerInfo[playerid][pPassword], checkpass)) {
					query_string[0] = 0;
					// print("12345:vishel pizdu pochesat");
					mysql_format(db, query_string, sizeof(query_string), "SELECT * FROM `accounts` WHERE `names` = '%e' AND `password` = '%e'", GetName(playerid), PlayerInfo[playerid][pPassword]);
					mysql_tquery(db, query_string, "LoginPlayer", "d", playerid);
				} else @_IncorrectPassword(playerid);
			}
		}
		case dMM: {
			if(response) {
				switch listitem do {
					case 0: ShowStats(playerid);
					case 1: return 1;
					case 2: return 1;
					case 3: return 1;
					case 4: ShowUpdateSettings(playerid);
				}
			}
		}
		case d_PLAYER_SETTINGS: { //! ����� ���������
			if(response) {
				switch listitem do {
					case 0: {
						PlayerInfo[playerid][pShowName] = !PlayerInfo[playerid][pShowName];
						foreach(new i: Player) ShowPlayerNameTagForPlayer(playerid, i, PlayerInfo[playerid][pShowName]);
					} 
					case 1: return Warning(playerid, "� ����������");
					case 2: return Warning(playerid, "� ����������");
					case 3: return Warning(playerid, "� ����������");
					case 4: return Warning(playerid, "� ����������");
					case 5: return Warning(playerid, "� ����������");
					case 6: return Warning(playerid, "� ����������");
					case 7: {
						if(PlayerInfo[playerid][pLevel] < 2) return Error(playerid, "[������]: {FFFFFF} ���������� Google Authenticator ����� ������ ������ ������ 1-�� ������!");
					}
				}
			}
		}
	}
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

@_mysqlPlayerAccountGet(playerid);
@_mysqlPlayerAccountGet(playerid) {
	query_string[0] = EOS;
	// print("yesss");
	mysql_format(db, query_string, sizeof query_string, "SELECT `password`, `salt` FROM `accounts` WHERE `names` = '%e'", GetName(playerid));
	mysql_tquery(db, query_string, "@_mysqlGetPlayerAccount", "i", playerid);
}

@_mysqlGetPlayerAccount(playerid);
@_mysqlGetPlayerAccount(playerid) {
	SetPlayerColor(playerid, 0xFF);

	if(cache_num_rows() != 0) {
		// print("yesss 2");
		cache_get_value_name(0, "password", PlayerInfo[playerid][pPassword], 65);
		cache_get_value_name(0, "salt", PlayerInfo[playerid][pSalt], 11);
		// printf("salt1:%s", PlayerInfo[playerid][pSalt]);	
		ShowLoginDialog(playerid);
	}
	else ShowRegDialog(playerid);

	return 1;		
}
@StopAnimation(playerid);
@StopAnimation(playerid) return ApplyAnimation(playerid, "PED", "facanger", 4.1, 0, 1, 1, 1, 1);

@_IncorrectPassword(playerid);
@_IncorrectPassword(playerid) {
	if(cache_num_rows() == 0) {
		new ssstring[80];
		// print("yesss 3");
		format(ssstring,sizeof(ssstring),"\
			{FF0000}�� ����� �������� ������!\n\
			{FFFFFF}������� ��� ����� ������:{0f4900} %d", 2 - GetPVarInt(playerid, "BadAttempt"));

		SHOW_PD(playerid, d_Log, DIALOG_P, "{FFA500}�����������", ssstring, "�����", "������");
		SetPVarInt(playerid, "BadAttempt", GetPVarInt(playerid, "BadAttempt") + 1);
		ssstring[0] = EOS;
	} else {LoginPlayer(playerid);}

	if(GetPVarInt(playerid, "BadAttempt") >= 3) {
		// print("yesss 444");
		SEND_CM(playerid, format_red, !"�� ��������� ������� �� �����������.");
		SHOW_PD(playerid, -1, 0, " ", " ", " ", "");
		return Kick(playerid);
	}

	return 1; 
}

stock ShowLoginDialog(playerid)
{
	sstring[0] = 0;
	format(sstring, sizeof(sstring),"\
		{FFFFFF}����� ���������� �� {daa44a}"SERVER_NAME"\n\n\
		{FFFFFF}������� ���� ������\n\
		{FFFFFF}������� ��� ����� ������:{0f4900} %d", 3 - GetPVarInt(playerid, "BadAttempt"));
	SHOW_PD(playerid, d_Log, DIALOG_P, "{FFA500}�����������", sstring, "�����", "������");
	
	return 1;	
}
stock ShowRegDialog(playerid)
{
	sstring[0] = 0;
	format(sstring, sizeof(sstring),"{FFFFFF}������������, {0093ff}%s\n\n\
		{FFFFFF}������ ������� {FFA500}�����������{FFFFFF} � ���� ������.\n\
		��� �����������, ������� ������ � ���� ����.\n\
		�� ����� ��������� ��� ���������� ����������� �� �������.\n\n\
		\t\t{FFFFFF}���������� ��� ����� ������:\n\
		\t\t- {FFA500}������ ������ �������� �� �������� � �� ��������� �����\n\
		\t\t- {FFA500}������ �� ������ ���� ������ 6 � ������ 24 ��������.", pi[playerid][pNames]);
	SHOW_PD(playerid, dReg1, DIALOG_P, !"{FFFFFF}[1/4]{FFA500} ������", sstring, !"�����",!"������");	
	return 1;
}
stock ShowUpdateSettings(playerid, vkontakte[] = " ") {
	sstring[0] = EOS;
	format(sstring, sizeof(sstring), "�������\t���������\n\
	{AFAFAF}����:\t%s\n\
	{AFAFAF}E-mail:\t%s\n\
	{AFAFAF}������� ������\t{0093ff}[ ������� ]\n\
	{AFAFAF}������� ������\t{0093ff}[ ���������� ����� ]\n\
	{AFAFAF}���������� �����:\t%s\n\
	{AFAFAF}��������\t{0093ff}[ ����� ������ ]\n\
	{AFAFAF}������ ������ ����������:\t%s\n\
	{AFAFAF}Google Authenticator\t{0093ff}����-����� �������\n\
	{AFAFAF}���� ����� �����:\t%s\n\
	{AFAFAF}���� ��������� / ����������:\t{0093ff} [ %s ]\n\
	{AFAFAF}�������� ���������:\t%s",
	PlayerInfo[playerid][pShowName] ? ("{008000}[���]") : ("{FF0000}[����]"),
	PlayerInfo[playerid][pEmail],!PlayerInfo[playerid][pHungryBar] ? ("{9ACD32}[���]") : ("{B83434}[����]"),
	PlayerInfo[playerid][pShowDocuments] ? ("{9ACD32}[���]") : ("{FF0000}[����]"),
	PlayerInfo[playerid][pEmailAuth] ? ("{9ACD32}[���]") : ("{B83434}[����]"),
	PlayerInfo[playerid][pLanguage] ? ("�������") : ("����������"),
	strlen(vkontakte) > 2 ? vkontakte: ("{B83434}�� ��������"));
	
	//if(PlayerInfo[playerid][pVkontakte]) && strlen(vkontakte) < 2 return GetVKName(playerid);
	return SHOW_PD(playerid, d_PLAYER_SETTINGS, DIALOG_STYLE_TABLIST_HEADERS, !"��������� ���������", sstring, !"�����", "������");
}

stock restoreDateOfPlayer(playerid) {
	PlayerAFK[playerid] 			=
	pi[playerid][pAdmin] 			= 
	pi[playerid][pLevel] 			=
	pi[playerid][pShowDocuments] 	=
	pi[playerid][pPassport] 		=
	pi[playerid][pSex] 				=
	pi[playerid][pSkin]				=
	pi[playerid][pMoney] 			=
	pi[playerid][pHungryBar] 		=
	pi[playerid][pWantedLevel]		=
	pi[playerid][pEmailConfirmed] 	= 0;

	printf("%d (%s) id ��������� ������ | thank you friend! you are gay!", playerid, GetName(playerid));

	for(new i = 5; i > 0; i--) {
    	pi[playerid][pDriveLic][i] = 0;
	}

	strmid(pi[playerid][pNames], "None", 0, 5, 24);
	strmid(pi[playerid][pPassword], "", 0, strlen(pi[playerid][pPassword]), 32);
	strmid(pi[playerid][pEmail], "", 0, strlen(pi[playerid][pEmail]), 32);

	return 1;
}
stock CreateAccount(playerid)
{
	sstring[0] =
	query_string[0] = EOS;

	PlayerInfo[playerid][pMoney]	 = BONUS_MONEY;
	PlayerInfo[playerid][pLevel] 	 = START_LEVEL;
	PlayerInfo[playerid][pSkin] 	 = DEFAULT_SKIN;
	PlayerInfo[playerid][pWantedLevel] 		= 0;

	new Year, Month, Day;
	getdate(Year, Month, Day);
	new date[13];
	format(date, sizeof(date), "%02d.%02d.%d", Day, Month, Year);

	mysql_format(db, query_string, sizeof(query_string),"INSERT INTO `accounts` (`names`, `password`, `salt`, `regIP`, `regData`, `lastIP`, `email`,`sex`,`admin`, `currentskin`, `money`, `level`, `wanted_level`) VALUES ('%e','%e','%e','%e','%e','%e','%e',%d,%d,%d,%d,%d,%d)", GetName(playerid), PlayerInfo[playerid][pPassword], PlayerInfo[playerid][pSalt], PlayerInfo[playerid][pIP], date, PlayerInfo[playerid][pLastIP], PlayerInfo[playerid][pEmail], PlayerInfo[playerid][pSex], PlayerInfo[playerid][pAdmin], PlayerInfo[playerid][pSkin], PlayerInfo[playerid][pMoney], PlayerInfo[playerid][pLevel], pi[playerid][pWantedLevel]);
	mysql_tquery(db, query_string, "", "");

	printf("22 (%s) %s", strlen(query_string), query_string);

	playerLoggedStatus{playerid} = true;
	SpawnPlayer(playerid);
	return 1;
}

stock ResetVariables(playerid) { //! ��������� ����������
	inadmcar[playerid] = -1;
}
function LoginPlayer(playerid) {
	new getIP[16];

	cache_get_value_name(0, "email", PlayerInfo[playerid][pEmail], 32);
	cache_get_value_name_int(0, "sex", PlayerInfo[playerid][pSex]);
	cache_get_value_name_int(0, "admin", PlayerInfo[playerid][pAdmin]);
	cache_get_value_name_int(0, "currentskin", PlayerInfo[playerid][pSkin]);
	cache_get_value_name_int(0, "money", PlayerInfo[playerid][pMoney]);
	cache_get_value_name_int(0, "level", PlayerInfo[playerid][pLevel]);

	cache_get_value_name(0, "licenses", PlayerInfo[playerid][pDriveLics]); // licenses
	sscanf(PlayerInfo[playerid][pDriveLics], "p<,>a<i>[5]",PlayerInfo[playerid][pDriveLics]);

	SetPlayerScore(playerid, PlayerInfo[playerid][pLevel]);
	GivePlayerMoney(playerid, PlayerInfo[playerid][pMoney]);
	SetPlayerSkin(playerid, PlayerInfo[playerid][pSkin]);

	PlayerInfo[playerid][pLastIP] = GetPlayerIp(playerid, getIP, 16);

	TogglePlayerSpectating(playerid, 0);

	if(PlayerInfo[playerid][pAdmin] > 0) SEND_CM(playerid, COLOR_WHITE, ADMIN_NOT_LOGGED);
	
	// SavePlayer(playerid);

	playerLoggedStatus{playerid} = true;
	SpawnPlayer(playerid);

	return 1;
}
stock ShowStats(playerid) {
	sstring[0] = EOS;

	format(sstring, sizeof(sstring), "�������\t����\n\
	{AFAFAF}��� ID:\t {0093ff}%d\n\
	{AFAFAF}��� ������� ���������:\t {0093ff}%s\n\
	{AFAFAF}���� �����:\t {0093ff}%s\n\
	{AFAFAF}������� �������:\t {0093ff}%d\n\
	{AFAFAF}�������:\t [ {0093ff}%s ]\n\
	{AFAFAF}���. �������������:\t [ {0093ff}%s, ���: %s{ffffff} ]",
		playerid, //! pi[playerid][pID] ��� �� ������ � ����
		pi[playerid][pNames],
		pi[playerid][pEmail],
		pi[playerid][pWantedLevel],
		pi[playerid][pPassport] ? ("{9ACD32}[����]") : ("{B83434}[���]"),
		pi[playerid][pDriveLic] ? ("{9ACD32}[����]") : ("{B83434}[���]"),
		pi[playerid][pDriveLics]
	);

	return SHOW_PD(playerid, dNull, DIALOG_STYLE_TABLIST_HEADERS, !"���������� ������", sstring, !"�����", "������");
}

stock SavePlayer(playerid) {
	if(!playerLoggedStatus{playerid}) return 0;

	format(pi[playerid][pDriveLics],20,"%i,%i,%i,%i,%i", pi[playerid][pDriveLic][0], pi[playerid][pDriveLic][1], pi[playerid][pDriveLic][2], pi[playerid][pDriveLic][3], pi[playerid][pDriveLic][4]);

	query_string[0] = EOS;
	mysql_format(db, query_string, sizeof(query_string), "UPDATE `accounts` SET `lastIP` = '%e', `email` = '%e', `sex` = %d, `admin` = %d, `currentskin` = %d, `money` = %d, `level` = %d, `wanted_level` = %d, `licenses` = '%s', `email_confirmed` = %d", PlayerInfo[playerid][pLastIP], PlayerInfo[playerid][pEmail], PlayerInfo[playerid][pSex], PlayerInfo[playerid][pAdmin], PlayerInfo[playerid][pSkin], PlayerInfo[playerid][pMoney], PlayerInfo[playerid][pLevel], PlayerInfo[playerid][pWantedLevel], PlayerInfo[playerid][pDriveLics], PlayerInfo[playerid][pEmailConfirmed]);
	mysql_tquery(db, query_string, "", "");

	return 1;
}

@MakeAdmin(playerid, const name[], level);
@MakeAdmin(playerid, const name[], level) {
	if(cache_num_rows() == 0) {
		if(!level) {
			query_string[0] = EOS;
			if(GetPlayerID(name) != INVALID_PLAYER_ID) PlayerInfo[GetPlayerID(name)][pAdmin] = 0;
			mysql_format(db, query_string, sizeof(query_string), "DELETE FROM `admin` WHERE names = '%e'", name);
			mysql_tquery(db, query_string, "", "");
			mysql_format(db, query_string, sizeof(query_string), "UPDATE `admin` SET level = 0 WHERE names = '%e'", name);
			mysql_tquery(db, query_string, "", "");
			sstring[0] = EOS;
			format(sstring, sizeof(sstring),"������������� %s ��� ���� � ���������.", name);
			SEND_CM(playerid, format_red, sstring);
		}
		else {
			if(GetPlayerID(name) !=INVALID_PLAYER_ID) PlayerInfo[GetPlayerID(name)][pAdmin] = level;
			query_string[0] = EOS;
			mysql_format(db, query_string, sizeof(query_string), "UPDATE `admin` SET level = %d WHERE names '%e' LIMIT 1", level, name);
			mysql_tquery(db, query_string, "", "");
			mysql_format(db, query_string, sizeof(query_string), "UPDATE `accounts` SET admin = %d WHERE names = '%e'", level, name);
			mysql_tquery(db, query_string, "", "");
			sstring[0] = EOS;
			format(sstring, sizeof(sstring), "������������� %s ������ ����� %i ������� �������.", name, level);
			SEND_CM(playerid, format_white, sstring);
		}
	}
	else {
		query_string[0] = EOS;
		if(!level) return SEND_CM(playerid, format_white, "����� �� �������������");
		mysql_format(db, query_string, sizeof(query_string), "INSERT INTO `admin` (name,level,last_connect) VALUES ('%e', %d, CURDATE())", name, level);
		mysql_tquery(db, query_string, "", "");
		mysql_format(db, query_string, sizeof(query_string), "UPDATE `accounts` SET admin = %d WHERE names = '%e'", level, name);
		mysql_tquery(db, query_string, "", "");
		sstring[0] = EOS;
		format(sstring, sizeof(sstring),"%s �������� � ���� ������ ��� �������������. ������� �������: %i", name, level);
		SEND_CM(playerid, format_white, sstring);
		if(GetPlayerID(name) != INVALID_PLAYER_ID) {
			PlayerInfo[GetPlayerID(name)][pAdmin] = level;
			query_string[0] = EOS;
			mysql_format(db, query_string, sizeof(query_string), "UPDATE `accounts` SET admin %d WHERE names = '%e'", PlayerInfo[playerid][pAdmin], name);
			mysql_tquery(db, query_string, "", "");
		}
	}
	return 1;
}

stock IsLoginInvalid(const text[]) {
	new playername[24];
	if(strfind(text, "none", false) != -1) return 1;
	if(strfind(text, "'", true) != -1) return 1;
	if(strfind(text, "/", true) != -1) return 1;
	if(strfind(text, "%", true) != -1) return 1;
	if(strfind(text, "&", true) != -1) return 1;
	if(strfind(text, "*", true) != -1) return 1;
	if(strfind(text, "(", true) != -1) return 1;
	if(strfind(text, ")", true) != -1) return 1;
	if(strfind(text, "1", true) != -1) return 1;
	if(strfind(text, "2", true) != -1) return 1;
	if(strfind(text, "3", true) != -1) return 1;
	if(strfind(text, "4", true) != -1) return 1;
	if(strfind(text, "5", true) != -1) return 1;
	if(strfind(text, "6", true) != -1) return 1;
	if(strfind(text, "7", true) != -1) return 1;
	if(strfind(text, "8", true) != -1) return 1;
	if(strfind(text, "9", true) != -1) return 1;
	else if(CheckExceptionName(playername)) return 0;
	return 0;
}
// GetString(const p1[], const p2[]) return !strcmp(p1, p2);
stock CheckExceptionName(const string[]) {
	static const NameList[][] = {
		NAME_FULL_ACCESS_1,
		NAME_FULL_ACCESS_2,
		NAME_FULL_ACCESS_3,
	 	NAME_FULL_ACCESS_4
	};
	for(new i = sizeof(NameList); i--; ) {
		if (!strcmp(string, NameList[i])) return 1;
		// if(!GetString(string, NameList[i])) return 1;
	}
	return 0;
}

stock GetPlayerID(const string[]) {
    new testname[MAX_PLAYER_NAME];
	foreach(new i:Player) {
		GetPlayerName(i, testname, sizeof(testname));
		if(!strcmp(testname, string, true)) return i;
	}
	return INVALID_PLAYER_ID;
}

stock ConnectSQL()
{
	db = mysql_connect(m_host, m_user, m_pass, m_db);
   	switch(mysql_errno()){
		case 0: print("�������� �����");
	    case 1044: return print("�� �������� ����� [�� ���� � ������������ ������??? � �� ���� ���]");
	    case 1045: return print("�� �������� ����� [������������ ������ �����]");
	    case 1049: return print("�� �������� ����� [�� ����� ����� ���� ������]");
	    case 2003: return print("�� �������� ����� [������ ���������� ���]");
		case 2002: return print("�� �������� ����� [�� ������ �� ������� �����]");
	    case 2005: return print("�� �������� ����� [�� ���� ���� �����]");
	    default: return printf("�� �������� ����� [��� ��� �����. ������: %d]", mysql_errno());
	}
	mysql_log(DEBUG); 
	return 1;
}