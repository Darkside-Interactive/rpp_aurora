//!============>> Copyright (c) 2017-2023 Darkside Interactive, Ltd. All rights reserved. <<============//
//*
//? ����: ������� ��� ������. ���������� � ���� ��� �������������� ����� �� `defines`, �������� ���
//? �������, ��������� ���������, ������� ADM || ICBRK(��� ������ DEV) � ���������.
//*
//!=====================================================================================================//

/*
           _ _ _ _ _ _		_ _ _ _ _ _ _		__ 					   __
		 _|	 _ _ _ _ _|    |  _ _ _ _ _  |	   |_ |_   			 	 _|  |
	   _|  _|		  	   | |		   | |		 |_ |_             _| _|
	  |	 _|                | |         | |		   |_ |_ 		 _| _|
      |	|	 _ _ _ _ _     | |_ _ _ _ _| | 		     |_ |_     _| _| 
	  |	|	| _ _ _   |    |  _ _ _ _ _  |			   |_ |___| _|
	  |	|			| |	   | | 		   | |			     |_   _|
	  |	|_			| |	   | |		   | |		     	   | |
	  |_  |_ _ _ _ _| |    | |         | |                 | |				//! �� ����������� ��� ������� ������
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

//=================================[ANTIDEMAMX PROC]==================================//
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
AntiDeAMX() {
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


//=============================[PREPROCESSOR DIRECTIVES]==============================//
#include "../defines/macroses" 
#if !defined IsValidVehicle
     native IsValidVehicle(vehicleid);
#endif
#include <a_samp>

#if MYSQL_IS_LOCAL == true
	#tryinclude "../defines/sql/local_sql_conn"
	#include <a_mysql>
#else
	#tryinclude "../defines/sql/sql_conn"
	#include <a_mysql>
#endif

//! ��� �������������� ���������� ��� ��������� ���������� 
//! � ���������� � ����� ����������� �������� ������� (� ������� �� �������� ��������)

#undef MAX_PLAYERS
#define MAX_PLAYERS (6)
#undef MAX_VEHICLES
#define MAX_VEHICLES (1000)


#pragma tabsize 0
#define STREAMER_USAGE 
//#define MAILER_PHP_SCRIPT

#if defined MAILER_PHP_SCRIPT
	#define MAILER_URL "dimamins.beget.tech/mailer.php"
	#define MAILER_MAX_MAIL_SIZE (1024) 
	#include "mailer"
#endif

#if !defined MAX_ADMINS
	#define MAX_ADMINS 15 //! ���� 15 ����� ����� ��������
#endif

#define MALLOC_MEMORY (32768)
#define YSI_YES_HEAP_MALLOC
#include "YSI_Coding\y_malloc"


//! � ����� 
// #if defined YSI_YES_HEAP_MALLOC
// 	#define jitter_use
// 	#include "YSI_Coding\y_malloc"
// #endif //! � ��� �� ������ �������� �� �����

// #if defined jitter_use
// 	#if defined YSI_NO_HEAP_MALLOC
// 		#undef jitter_use
// 		#include "YSI_Coding\y_malloc"
// 		#tryinclude "YSI\jit.inc"
// 	#endif
// #endif //! ��� __no_heap_mal. �� �������� jitter.inc
// #if defined STREAMER_USAGE 
// 	#tryinclude <streamer> 
// #endif	


//=================================[THIS IS INCLUDES]=================================//

#include <sscanf2>
// #include <foreach>
#include "YSI_Data/y_foreach"
#include "YSI_Coding\y_timers"
#include <fix>
#include <crashdetect> 
#include <dc_cmd>
#include <Pawn.Regex>
#include <TOTP>
#include <YALP>
#include <strlib> //! ����� �������� �����

//==========================[DIRECTORY | SYSTEMS | INCLUDES]==========================//

#include "../defines/colors" 
#include "../defines/systems/capture_natives/natives" 
// #include "../../defines/objs/autoLoader" //! ������ ������ ������

// #include "../../defines/systems/autoschool/main"

//===================================[NATIVE CONFIG]==================================//
#define function%0(%1)					forward%0(%1); public%0(%1)
#define pi 								PlayerInfo

// f:%0(									%0[0] = 0,format(%0,sizeof(%0),

#define fADM(%0,%1) 					if(PlayerInfo[%0][pAdmin] < %1) return 1
#define GetName(%0)						pi[%0][pNames]
#define RandomEx(%0,%1) 				(random(%1-%0)+%0)
#define CheckConnection(%0)				(!IsPlayerConnected(%0))				

//! ��� ����� � ������
//! vehicleSystem

// #define FlipVeh(%0)						new Float:A;GetVehicleZAngle(%0,A);SetVehicleZAngle(%0,A);
// new bool:nitroHype[MAX_PLAYERS];
// new bool:autoRepairCar[MAX_PLAYERS];

//! ��� ������� ������� � ���� � ����������� _als_


//! ��� ����� ��������
#define MIN_LIC_COUNT					(1)
#define MAX_LIC_COUNT					(5)
#define IsLicenseValid(%0)				(!(MIN_LIC_COUNT <= (%0) <= MAX_LIC_COUNT))
//!

#define IsRangeValid(%0,%1)				(strlen(%0) <= %1)
//! ������ �������� %0 - ������, %1 - �����

//===================================[SERVER CONFIG]==================================//
#define SERVER_NAME 					"Aurora RolePlay"
#define SERVER_VERSION 					"Aurora [v."MODE_VERS"]"
#define MODE_VERS						"0.1.2.0 DEV"
#define SERVER_MAP                      "South Ural"
#define SERVER_WEBSITE 					"rpp-aurora.ru/"
#define PRIME_HOST_PAGE 				"prime-host.pro/"
#define SERVER_FORUM                    "/"
#define SERVER_GROUP                    "vk.com/rpp_aurora"
#define SERVER_FREE_GROUP               "vk.com/rpp_aurora"
#define SERVER_LANGUAGE                 "Russian/English/Belarussian"
#define SERVER_MAIL_ADDRESS				"support@rpp-aurora"
#define TEST_EMAIL						"dimamironov1337228@gmail.com"

//=================================[FULL ACCESS CONFIG]===============================//
#define NAME_FULL_ACCESS_1				"Jei_Kilo"
#define NAME_FULL_ACCESS_2				"I]C[E_the_Bre]a[ker"
#define NAME_FULL_ACCESS_3				"Name_Subname"
#define NAME_FULL_ACCESS_4				"Name_Subname"

//==================================[ADM | ICBRK CONFIG]==============================//
#define ADMIN_NOT_LOGGED       		    "{0093ff}[ADM]: {FFFFFF}�� �� � �������. ����������� {33CCFF}/alog"
#define ADMIN_ALREADY_LOGGED 	        "{FFFFFF}�� ��� � �������!"
#define PLAYER_INVALID 					"{FFFFFF}����� �� �������."
#define PLAYER_NOT_LOGGED 				"{FFFFFF}����� �� �����������."
#define LICENSE_INVALID					"{FFFFFF}�������� ��������: �� ������ 0 �� ������ 5"

//====================================[PLAYER CONFIG]=================================//
#define NOT_AVAILABLE 					"��� ���������� ������ �����������!"
#define NOT_ENOUGH_MONEY                "� ��� ������������ ������� �� �����."
#define SERVER_CLOSED 					"{F04245}������ ������ ����������! ��� ������ �� ����, ������� {0093ff}/q(uit)"
#define LOG_TIMED_OUT					"{F04245}����� �� ����������� �������! ��� ������ �� ����, ������� {0093ff}/q(uit)"

main(){
	printf("");
 	printf("\t| RPP_"#SERVER_VERSION" | %s", __date);
 	printf("\t|--------------------------------");
 	printf("\t| Creators and maintainers: "#NAME_FULL_ACCESS_2"| "#NAME_FULL_ACCESS_1"");
 	printf("\t| Project managed by Darkside Interactive, Ltd. All rights reserved. ");
 	printf("");
 	printf("");
 	printf("");
 	printf("\t| Compiled: %s at %s", __date, __time);
 	printf("\t|--------------------------------------------------------------");
 	printf("\t| Repository: https://github.com/ICEtheBreaker/rpp_aurora");
 	printf("");
}


new 
	query_string[800], // mysql string
	fstring[4097]; // format string
	//GlobalTime;
	//AuthSymbols[32][] = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "2", "3", "4", "5", "6", "7"};

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
	pShowDocuments, //! ��������� � ������� ����������
	sdTrade,
	pEmailAuth,
	pGugleAuth[17],
	pGugleSettings,
	pGugleEnabled,

	//!======== [���. ����] ======
	pVkontakte,
	pDiscord,
	pTelegram,
	//!===========================

	pLanguage,
	pWantedLevel,

	pPassport,
	pFIO[64],
	pPassportID,

	 //! �������� ���� �� �������?
	// ������� ��������
	pDrivingCategories[5],
	pDrivingQuery[20],
	pDrivingLic, //! ���� �� �����?
	//

}
new PlayerInfo[MAX_PLAYERS][pInfo];

//! ����� ����� svar'�, ��������� pvar'� �� ��������� ������ �� ��������� �����, � ��� �� ��� ����� ��������� ��������� ��� ����������
enum tTemporaryVars {
	tFreezePlayerTime
}
new tTemp[MAX_PLAYERS][tTemporaryVars];

//! ������� � ������ define/systems/textureLoading

#define freezePlayerOnSpawn(%0);		\
	tTemp[%0][tFreezePlayerTime] = \
		gettime() + (GetPlayerPing(%0) < 101) ? (1) : \
		((GetPlayerPing(%0) > 100 && GetPlayerPing(%0) < 201)) ? (2) : (3)\
	TogglePlayerControllable(%0, false)

//! -- mysql ��������
#include "../defines/systems/capture_natives/mysql_customs"
//! --

/*
	//! ��� ������� pDriveCategories:
	1 - ����� �� �����������
	2 - ���������
	3 - ��������
	4 - ������
	5 - ������

	//? pDriveQuery ������ � ���� ������ 
*/

//! TextDrawsInit � �����
#include "../defines/systems/textdraws/TextDrawsInit"	//! ����� ������� ��� ���������� � ����� � ����������, ����� �� �������� ���
#include "../defines/systems/chat/chatmsg"	//! ������� ����

//====================================================================================//

//! ������� ��������
//! ���������� ������� � ������� ��� � ������

enum passport {
	ID,
	FIO[64],
	ID_IN_REGISTER,
	NOMER[8],
	SERIAL[6],
	PROPISKA[64],
	SEX[8],
	IFCHANGEDSEX,
	ISSUED,
	WHOMISSUED,
	DATEOFBIRTHDAY,
	OTHER_DOCUMENTS[4] //! ����� ����� ������ ��������� ����������
}
new 
	passport_info[MAX_PLAYERS][passport];

//!

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

//!	=============== [������� ���� MAIN] =================
#include "../defines/systems/vehicle/main.veh"
//! =====================================================

new inadmcar[MAX_PLAYERS char];
new PlayerBadAttempt[MAX_PLAYERS char];
new PlayerAFK[MAX_PLAYERS];

new 
	time_update,
	time_update_max;

//new oldhour; //? ���������� ��������� �������
new timedata[5]; //? ���������� ������� � ����

new Iterator:ADM_LIST<MAX_ADMINS>; //! ������� ���� ������

enum {
	dNull = 0, 
	dLogin = 1, dReg1 = 2, dReg2 = 3, dReg3 = 4, d_Log = 5,
	dMM = 6, dSECURE_SETTINGS = 7, d_PLAYER_SETTINGS = 8,
	Gugle = 9, Gugle_Settings = 10, GugleInfo = 11, 
	GugleInfo2 = 12, GugleInfo3 = 13, GugleInfo4 = 14, GugleInfo5 = 15,
	Gugle_Delete = 16, Gugle_Confirm = 17, PASS_CHANGE = 18, OLD_PASS = 19, NEW_PASS = 20,
}

public OnGameModeInit()
{
	ConnectSQL();
	AntiDeAMX();

	new MySQLOpt: option_id = mysql_init_options();
 	new currenttime = GetTickCount();
	new Lua:test = lua_newstate();

	mysql_set_option(option_id, AUTO_RECONNECT, true); //! ����� ����������������� � ������� � ������ ������ ����� ��� ������������ ������
	SetGameModeText(""#SERVER_VERSION""); 
	SendRconCommand("hostname "#SERVER_NAME"");
	SendRconCommand("mapname "#SERVER_MAP"");
	Iter_Clear(ADM_LIST);

	if(lua_loadfile(test, "../../lua/test.lua")) return lua_stackdump(test);
	lua_bind(test);
	lua_stackdump(test);

	printf("OnGameModeInit ���������� �� %i ms", GetTickCount() - currenttime);
	gettime(timedata[0], timedata[1]);
	// oldhour = timedata[0]; //! ��������� ��������� ������� | p.s. �������� � ����� ������ ���� (���� �������)

	DisableInteriorEnterExits();
	EnableStuntBonusForAll(0); 

	//? timers
	SetTimer("AFKSystemUpdates", 1000, true);
	return 1;
}

task OnSecond[1000]() {
	// print("�������� ��������� ������");
	return 1;
}
ptask OnSecondTimer[1000](playerid) {
	if(tTemp[playerid][tFreezePlayerTime] >= gettime()) {ClearAnimations(playerid),TogglePlayerControllable(playerid,true),tTemp[playerid][tFreezePlayerTime]=0;}
}
task OnMinute[1000*60]() {
	// print("�������� �������� ������");
	return 1;
}
task OnHour[1000*60*60]() {
	// print("�������� ������� ������");
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
	SetTimerEx("@_mysqlPlayerAccountGet", 1000, 0, "i", playerid);

	GetPlayerName(playerid, PlayerInfo[playerid][pNames], MAX_PLAYER_NAME);
	GetPlayerIp(playerid, PlayerInfo[playerid][pIP], 16);

	if(IsLoginInvalid(GetName(playerid))) {
		Msg(playerid, ERR, "���� ��� �������� ����������� ������� ��� �����. ����������� ������: [���_�������]");
		return Kick(playerid);
	}
	SEND_CM(playerid, COLOR_DBLUE, !"����� ���������� �� "SERVER_NAME"!");
	/*new code = 999 + random(9000);
	format(fstring, sizeof(fstring), "��� ��� �������������: %d", code);
	SendMail(TEST_EMAIL, SERVER_MAIL_ADDRESS, SERVER_NAME, "��� ��� ������������� �����������", fstring);
	printf("22:%s", (SHA256_PassHash("AB00ABF5809A496150A22AF43047C1E3D8CAD4CC2B7336E471953BD9D5AF6FA1", "1wv2d<A^_5")));*/
	return 1;
}

public OnPlayerDisconnect(playerid, reason) {
	if(!playerLoggedStatus{playerid}) return 1; 
	else SavePlayer(playerid), ResetVariables(playerid);
	if(PlayerInfo[playerid][pAdmin] > 0) Iter_Remove(ADM_LIST, playerid);

	PlayerAFK[playerid] 			= -2;

	if(inadmcar{playerid} != -1) return DestroyVehicle(inadmcar{playerid}), inadmcar{playerid} = 0;
	return 1;
}

public OnPlayerSpawn(playerid) {
	if(!playerLoggedStatus{playerid}) return Msg(playerid, ERR, SERVER_CLOSED), Kick(playerid);

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
    if(!playerLoggedStatus{playerid}) {
		Msg(playerid, ERR, "��� ��������� ��������� � ���� �� ������ ��������������!");
		return Kick(playerid);
	}

	fstring[0] = 0;
	if(strlen(text) < 64) {
		format(fstring, (20 + (-2+MAX_PLAYER_NAME) + (-2+4) + (-2+MAX_PLAYER_NAME)), "%s [%d] �������: %s", GetName(playerid), playerid, text);
		ProxDetector(20.00, playerid, fstring, format_white, format_white, format_white, format_white, format_white);
	 	SetPlayerChatBubble(playerid, text, format_white, 20.0, 7500);
		
		if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) ApplyAnimation(playerid, "PED", "IDLE_chat", 4.1, 0, 1, 1, 1, 1), SetTimerEx("@StopAnimation", 3200, false, "d", playerid);
	} else Msg(playerid, WARN, "������� ������� ���������!");
	return 0;
}
public OnPlayerCommandText(playerid, cmdtext[]) return 0;
public OnPlayerCommandReceived(playerid, cmdtext[], params[], flags) {
	if(!playerLoggedStatus{playerid}) return 0;
	return 1;
}
public OnPlayerCommandPerformed(playerid, cmdtext[], success) {
	if (!success || success == -1) 
		Msg(playerid, ERR, "������� �������� �������. ��� ������� ����������� \"'/help'\"");
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
		if(inadmcar{playerid} != -1) {
			DestroyVehicle(inadmcar{playerid});
			inadmcar{playerid} = 0;
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
	fADM(playerid, ADM_CHIEF);
	if (newkeys || newkeys == 9 || newkeys == 3 && oldkeys != 1 || oldkeys != 9 || oldkeys != 33) 
		if (nitroHype[playerid] && GetPlayerState(playerid) == PLAYER_STATE_DRIVER) 
			AddVehicleComponent(GetPlayerVehicleID(playerid), 1010);

	return 1;
}
public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

//! ��������, ��������� ����� �� �� � ������ ����������� �� ����� � ����������
stock SetLocalization(playerid, type) {
	new 
		language = GetLanguage(playerid);

	new languagesType[][][] = {
		{"��������������", "Warning", "������������"},
		{"������", "Error", "�������"},
		{"����������", "Information", "����������"},
		{"�������", "Success", "���������"},
		{"�����������", "Notification", "������������"}
	};

	new text[15] = 0;

	// printf("%d isempty", isempty(text));

	switch(type) {
		case WARN: {
			// printf("%d - ����� languages type [0][0], %s - text", strlen(languagesType[0][0]), languagesType[0][0]);
			if (language) strcat(text, languagesType[0][0]); //! Rus
			else if (language == 2) strcat(text, languagesType[0][1]); //! English
			else strcat(text, languagesType[0][2]); //! Belarus

			// printf("%s (��� ���������� strcat �����)", text);
		}
		case ERR: {
			if (language) strcat(text, languagesType[1][0]); //! Rus
			else if (language == 2) strcat(text, languagesType[1][1]); //! English
			else strcat(text, languagesType[1][2]); //! Belarus

			// printf("%s (��� ���������� strcat �����)", text);
		}
		case NOTIFICATION: {
			if (language) strcat(text, languagesType[2][0]); //! Rus
			else if (language == 2) strcat(text, languagesType[2][1]); //! English
			else strcat(text, languagesType[2][2]); //! Belarus

			// printf("%s (��� ���������� strcat �����)", text);
		}
		case SUCCESS: {
			if (language) strcat(text, languagesType[3][0]); //! Rus
			else if (language == 2) strcat(text, languagesType[3][1]); //! English
			else strcat(text, languagesType[3][2]); //! Belarus

			// printf("%s (��� ���������� strcat �����)", text);
		}
		case INF: {
			if (language) strcat(text, languagesType[4][0]); //! Rus
			else if (language == 2) strcat(text, languagesType[4][1]); //! English
			else strcat(text, languagesType[4][2]); //! Belarus

			// printf("%s (��� ���������� strcat �����)", text);			
		}
		default: text = "None", (printf("test %s", GetLanguage(playerid)));
	}
	return text;
}


// CMD:testtesttest(player, params[]) {
// 	if(sscanf(params, "s[24]", params[0])) return Msg(player, NOTIFICATION, "/testtesttest [text]");
// 	// if(!(1 <= params[0] <= 24)) return false;
// 	printf("(%s = ��� ���) : (%s = ��� �����)", (SetLocalization(player, WARN)), params[0]);
// 	return 1;
// }


public OnPlayerUpdate(playerid) {
	new tc = GetTickCount();
	if(!playerLoggedStatus{playerid}) return false;

	PlayerAFK[playerid] = 0;

	time_update = GetTickCount() - tc;
	if(time_update > time_update_max) time_update_max = time_update;

	return 1;
}
CMD:timestat(playerid) {
	fADM(playerid, ADM_DEPUTY_CHIEF || CheckExceptionName(GetName(playerid)));

	fstring[0] = 0;
	format(fstring, (85 + (-2+6) + (-2+6)),"��������� ������ "LightGreen_color"`OnPlayerUpdate`"Default": (%d ms). ���: (%d ms).", time_update, time_update_max);
	SHOW_PD(playerid, dNull, DIALOG_M, ""LightGreen_color"�������� �� ���", fstring, "�������", "");

	/*
		\n��������� ����� ��������� \"newkeys\": (%d ms). ���: (%d ms).\n��������� ����� ��������� \"second_timer\": (%d ms). ���: (%d ms).
		,time_newkeys,time_newkeys_max,time_second,time_second_max
	*/

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

stock EditStatToPlayer() {} //! !!!!
CMD:aeditplayer(playerid) {
	//! ��� �������� �� ��� � ���������� ���
	return 1;
}
CMD:agivelic(playerid, params[]) {
	fADM(playerid, ADM_MODER);
	if(sscanf(params, "ii", params[0], params[1])) Msg(playerid, NOTIFICATION, "/agivelic (playerid) (licid)");
	if(CheckConnection(params[0])) return Msg(playerid, ERR, PLAYER_INVALID);
	if(!(1 <= params[1] <= 5)) return Msg(playerid, ERR, LICENSE_INVALID);
	if(!strlen(params[0])) return Msg(playerid, ERR, "�� �� ������� ID ������");
	if(!strlen(params[1])) return Msg(playerid, ERR, "�� �� ������� ID ��������");
	if(!strlen(params[0]) && !strlen(params[1])) return Msg(playerid, ERR, "�� ������ �� �������");

	fstring[0] = 0;
	format(fstring, sizeof(fstring), "�� ������� ������ ������ %s (%d) �������� (LicID: %d)",GetName(params[0]),params[0],params[1],LicType(params[1]));
	Msg(playerid, NOTIFICATION, fstring);

	GiveLic(params[0], params[1]);

	return 1;
}
CMD:a(playerid, params[])
{
	fADM(playerid, ADM_HELPER);
    if(sscanf(params, "s[150]", params[0])) return Msg(playerid, ERR, "/a [�����]");
    //ADMMessage("%s[%d]: %s", GetName(playerid), playerid, params[0]);
	return 1;
}

CMD:giveweap(playerid, params[]) {
	new weaponID, ammoValue;
	fADM(playerid, ADM_CHIEF);
	if(sscanf(params, "iii", params[0], weaponID, ammoValue)) Msg(playerid, NOTIFICATION, "/giveweap [playerid] [weaponid] [ammoValue (0-999)]");
	if(!(0 <= (weaponID) <= 46)) return Msg(playerid, NOTIFICATION, "�������� weaponID: < 0 ���� > 46!");
	if(!(0 <= (ammoValue) <= 999)) return Msg(playerid, NOTIFICATION, "�������� ammoValue: < 0 ���� > 999!");
	GivePlayerWeapon(params[0], weaponID, ammoValue);
	return 1;
}

CMD:plvh(playerid, params[]) {
	fstring[0] = 0;
	fADM(playerid, ADM_OLDER_MODER);
	if(sscanf(params, "dddd", params[0], params[1], params[2], params[3]))  return Msg(playerid, NOTIFICATION, "/plvh [playerid] [vehicleid] [1 color] [2 color]");
	if(!playerLoggedStatus[params[0]]) return Msg(playerid, ERR, PLAYER_NOT_LOGGED);
	if(GetPlayerInterior(params[0]) != 0) {
		format(fstring,sizeof(fstring), !"����� ��������� � ��������� (%d)", GetPlayerInterior(playerid)),Msg(playerid, ERR, fstring); 
		fstring[0] = 0;
	}
	if(GetPlayerVirtualWorld(params[0]) != 0)  {
		format(fstring,sizeof(fstring), !"����� ��������� � ����������� ���� (%d)", GetPlayerVirtualWorld(playerid)),Msg(playerid, ERR, fstring); 
		fstring[0] = 0;
	}
	if(!(400 <= params[1] <= 611)) return Msg(playerid, ERR, "�������� ID �����������: �� ������ 400 �� ������ 611");
	if(!(0 <= params[2] <= 255)) return Msg(playerid, ERR, "�������� ������� �����: �� ������ 0 �� ������ 255");
	if(!(0 <= params[3] <= 255)) return Msg(playerid, ERR, "�������� ������� �����: �� ������ 0 �� ������ 255");
	new Float:x,
		Float:y,
		Float:z;
	new Float:Angle;
	GetPlayerPos(params[0], x, y, z);
	GetPlayerFacingAngle(params[0], Angle);
	inadmcar{params[0]} = CreateVehicle(params[1], x, y, z, Angle, params[2], params[3], -1);
	PutPlayerInVehicle(params[0], inadmcar{params[0]}, 0);
	return 1;
}
CMD:makeadmin(playerid, params[]) {
	new playername[24], adm_level;
	fADM(playerid, ADM_FOUNDER);
	if(sscanf(params, "s[24]i", playername, adm_level)) Msg(playerid, NOTIFICATION, "�������: /makeadmin [��� ������] [������� �������]");
	else if(CheckExceptionName(playername)) return 0;
	else if(!(ADM_NONE <= adm_level <= ADM_DEPUTY_CHIEF)) Msg(playerid, NOTIFICATION, "�������� ������� � �������: �� ������ 1 �� ������ 6");
	query_string[0] = 0;
	mysql_format(db, query_string, sizeof(query_string), "SELECT * FROM `admin` WHERE name = '%e'", playername);
	mysql_tquery(db, query_string , "@MakeAdmin", "isi", playerid, playername, adm_level);
	return true;
}

//? /me /todo /do /try /n /s /b /ame
CMD:me(playerid, params[]) {
	if(sscanf(params, "s[118]", params[0])) Msg(playerid, NOTIFICATION, "/me [��������]");
	if(strlen(params[0]) > 32) Msg(playerid, ERR, "�������� ����� ������: �� ������ 0 �� ������ 32!");
	if(!strlen(params[0])) return Msg(playerid, WARN, "�� ������ �� �����!");
	fstring[0] = 0;
	format(fstring, sizeof(fstring), "%s %s", PlayerInfo[playerid][pNames], params[0]);
	ProxDetector(20.00, playerid, fstring, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193);
	SetPlayerChatBubble(playerid, params[0], 0x00F76193, 20, 7500);
	return 1;
}
CMD:ame(playerid, params[]) {
	if(sscanf(params, "s[144]", params[0])) Msg(playerid, NOTIFICATION, "/ame [��������]");
	if(strlen(params[0]) > 32) Msg(playerid, ERR, "�������� ����� ������: �� ������ 0 �� ������ 32!");
	if(!strlen(params[0])) return Msg(playerid, WARN, "�� ������ �� �����!");
	SetPlayerChatBubble(playerid, params[0], 0x00F76193, 20, 7500);
	return 1;
}
CMD:do(playerid, params[]) {
	if(sscanf(params, "s[116]", params[0])) Msg(playerid, NOTIFICATION, "/do [�����]");
	if(strlen(params[0]) > 32) Msg(playerid, ERR, "�������� ����� ������: �� ������ 0 �� ������ 32!");
	if(!strlen(params[0])) return Msg(playerid, WARN, "�� ������ �� �����!");
	fstring[0] = 0;
	format(fstring, sizeof(fstring), "%s (%s)", params[0], PlayerInfo[playerid][pNames]);
	ProxDetector(20.00, playerid, fstring, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193);
	SetPlayerChatBubble(playerid, params[0], 0x00F76193, 20, 7500);
	return 1;
}
CMD:try(playerid, params[]) {
	if(sscanf(params, "s[99]", params[0])) Msg(playerid, NOTIFICATION, "/try [�����]");
	if(strlen(params[0]) > 32) Msg(playerid, ERR, "�������� ����� ������: �� ������ 0 �� ������ 32!");
	if(!strlen(params[0])) return Msg(playerid, WARN, "�� ������ �� �����!");
	fstring[0] = 0;
	format(fstring, sizeof(fstring), "%s %s | %s", PlayerInfo[playerid][pNames], params[0], (!random(2)) ? ("{FF0000}��������") : ("{32CD32}������"));
	ProxDetector(20.00, playerid, fstring, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193, 0x00F76193);
	return 1;
}/*SENDNMSG*/
CMD:todo(playerid, params[]) {
	if(strlen(params) > 95) return Msg(playerid, NOTIFICATION, "������� ������� ����� � ��������.");
	new message[48],
		action[49];
	if(sscanf(params, "p<*>s[47]s[48]", message, action)) return Msg(playerid, NOTIFICATION, "/todo [�����*��������]");
	if(strlen(message) < 2 || strlen(action) < 2) return Msg(playerid, NOTIFICATION, "/todo [�����*��������]");
	fstring[0] = 0;
	format(fstring, sizeof(fstring), "- '%s' - {DE92FF}������%s %s, %s", message, (PlayerInfo[playerid][pSex] == 1) ? ("") : ("�"), PlayerInfo[playerid][pNames], action);
	ProxDetector(20.0, playerid, fstring, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE, COLOR_WHITE); 
	return 1;
}
CMD:n(playerid, params[]) {
	if(sscanf(params, "s[107]", params[0])) return Msg(playerid, NOTIFICATION, "/n [���������]");
	fstring[0] = 0;
	format(fstring, sizeof(fstring), "(( %s[%d]: %s ))", PlayerInfo[playerid][pNames], playerid, params[0]);
	ProxDetector(20.0, playerid, fstring, 0xCCCC99FF, 0xCCCC99FF, 0xCCCC99FF, 0xCCCC99FF, 0xCCCC99FF);
	return 1;
}
CMD:s(playerid, params[]) {
	if(sscanf(params, "s[105]", params[0])) Msg(playerid, NOTIFICATION, "/s [�����]");
	if(!(0 <= strlen(params[0]) <= 105)) return Msg(playerid, WARN, "�������� ����� ������: �� ������ 0 �� ������ 105");
	if(!strlen(params[0])) return Msg(playerid, WARN, "�� ������ �� �����!");
	fstring[0] = 0;
	format(fstring, sizeof(fstring), "%s [%d] �������%s: %s", PlayerInfo[playerid][pNames], playerid, (PlayerInfo[playerid][pSex] == 1) ? ("") : ("�"), params[0]);
	ProxDetector(20.00, playerid, fstring, 0xCCCC99FF, 0xCCCC99FF, 0xCCCC99FF, 0xCCCC99FF, 0xCCCC99FF);
	if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) ApplyAnimation(playerid, "ON_LOOKERS", "shout_01", 4.1,0,0,0,0,0);
	SetPlayerChatBubble(playerid, params[0], format_white, 25, 7500);
	return 1;
}
CMD:menu(playerid) {
	fstring[0] = 0;
	gettime(timedata[0], timedata[1]);
	format(fstring, sizeof(fstring), "{0093ff} ������� ���� | ������ �����: %02d.%02d", timedata[0], timedata[1]);
	ShowPlayerDialog(playerid, dMM, DIALOG_L, fstring, "{B03131}[1]{FFFFFF} �������� ���������\n\
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
				if(!strlen(inputtext)) return Msg(playerid, ERR, "�� ������ �� �����."), ShowRegDialog(playerid);
				if(!(6 <= strlen(inputtext) <= 22)) return Msg(playerid, WARN, "�������� ����� ������: �� 6 �� 22 ��������."), ShowRegDialog(playerid);
				new Regex:rg_passwordcheck = Regex_New("^[a-zA-Z0-9]{1,}$");

				if(Regex_Check(inputtext, rg_passwordcheck)){ 
					new salt[11];
					for(new i = 11; i--; ) salt[i] = random(79) + 47;
                	salt[10] = 0;
					SHA256_PassHash(inputtext, salt, PlayerInfo[playerid][pPassword], 65);
					// printf("salt::%s;pass:%s", salt, PlayerInfo[playerid][pPassword]);
					strmid(PlayerInfo[playerid][pSalt], salt, 0, 11, 11);
					fstring[0] = 0;
					format(fstring, sizeof(fstring), "{FFFFFF}������� ��� {FFA500}e-mail{FFFFFF} �����, �� ������� ����� �������� ������ �������.\n���� �� ��������� ������ � ������ ��������, �� � ������� {FFA500}e-mail{FFFFFF} �� ������� ������������ ���.");
					SHOW_PD(playerid, dReg2, DIALOG_I, !"{FFFFFF}[2/4]{FFA500} �����", fstring, !"�����", !"������");	
				} else {
					ShowRegDialog(playerid), Msg(playerid, ERR, "������ ����� �������� ������ �� ����� � ��������� �������� ������ ��������.");
				}
				Regex_Delete(rg_passwordcheck);
			} else {
				Msg(playerid, ERR, SERVER_CLOSED);
				return Kick(playerid);
			}
		}
		case dReg2:
		{
			if(!response){
				Msg(playerid, ERR, SERVER_CLOSED);
				return Kick(playerid);
			}
			else {
				if(!IsValidEmail(inputtext)) {
					Msg(playerid, ERR, "�������� ��� ����������� �����. �������: [@gmail.com, @yandex.ru, @mail.ru, @vk.ru]");
					SHOW_PD(playerid, dReg2, DIALOG_I, !"{FFFFFF}[2/4]{FFA500} �����", fstring, !"�����", !"������");	
				}
				if(!strlen(inputtext)) {
					Msg(playerid, ERR, "�� �� ������� �����.");
					SHOW_PD(playerid, dReg2, DIALOG_I, !"{FFFFFF}[2/4]{FFA500} �����", fstring, !"�����", !"������");	
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
				Msg(playerid, ERR, SERVER_CLOSED);
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
					mysql_format(db, query_string, (68 + (-2+MAX_PLAYER_NAME) + (-2+67)), "SELECT * FROM "T_ACC" WHERE `names` = '%e' AND `password` = '%e'", GetName(playerid), PlayerInfo[playerid][pPassword]);
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
					case 1: return Msg(playerid, WARN, "� ����������");
					case 2: {
						if(PlayerInfo[playerid][pGugleEnabled] == 1) {
							SHOW_PD(playerid, PASS_CHANGE, DIALOG_STYLE_INPUT, "Google Authenticator", 
							"\n\n{FFFFFF}� ����� �������� ���������� ������������� {F1FC4C}Google Authenticator.\n\
							{FFFFFF}������� ��� ������������� ��� ����� � ����.\n\n{FC4C4C}���� �� �������� �������/������� ���������� ��� ��������\n\
							����������������� ���, �� ��� ������� ���� ��� � ���\n��������� ��������� �����, �� ������\n\
							��������� Google Authenticator �� �����:\n\n{FFFFFF}"SERVER_WEBSITE"/profile/in\n", !"�������", !"������");
						}
						else SHOW_PD(playerid, OLD_PASS, DIALOG_STYLE_INPUT, "������������� ������","\n\n{FFFFFF} ������� ��� ������� ������ � ���� ����:", !"�����", !"�������");
					}
					case 3: return Msg(playerid, WARN, "� ����������");
					case 4: return Msg(playerid, WARN, "� ����������");
					case 5: return Msg(playerid, WARN, "� ����������");
					case 6: return Msg(playerid, WARN, "� ����������");
					case 7: {
						if(PlayerInfo[playerid][pLevel] < 2) return Msg(playerid, ERR, " ���������� Google Authenticator ����� ������ ������ ������ ������� ������!");
						fstring[0] = 0;
						format(fstring, sizeof(fstring), "��������� Google Authenticator\n���������� Google Authenticator");
						SHOW_PD(playerid, Gugle, DIALOG_STYLE_LIST, !"{0093ff}Google Authenticator", fstring, !"�������", "�����");
					}
					case 8: return Msg(playerid, NOTIFICATION, "� ����������");
					case 9: SetLanguage(playerid, pi[playerid][pLanguage]),ShowUpdateSettings(playerid);

					case 10: { //! � ����� � ����� ����� ������ �����-������ �������� ���� ����� ���� ��� ���������
						if(!pi[playerid][pVkontakte] && !pi[playerid][pDiscord] && !pi[playerid][pTelegram]) return 0;

						//! ����� ��� ������� �������� (API)
					}
				}
			}
			else {
				cmd::menu(playerid);
			}
		}
	  	case PASS_CHANGE: {
			if(response) {
				new getcode = GoogleAuthenticatorCode(PlayerInfo[playerid][pGugleAuth], gettime());
				if(strval(inputtext) == getcode && !isempty(inputtext)) SHOW_PD(playerid, OLD_PASS, DIALOG_STYLE_INPUT, "������������� ������","\n\n{FFFFFF} ������� ��� ������� ������ � ���� ����:", !"�����", !"�������");
				else {
					Msg(playerid, NOTIFICATION, "����� �������� Auth-���");
					return SHOW_PD(playerid, PASS_CHANGE, DIALOG_STYLE_INPUT, "Google Authenticator", 
					"\n\n{FFFFFF}� ����� �������� ���������� ������������� {F1FC4C}Google Authenticator.\n\
					{FFFFFF}������� ��� ������������� ��� ����� � ����.\n\n{FC4C4C}���� �� �������� �������/������� ���������� ��� ��������\n\
					����������������� ���, �� ��� ������� ���� ��� � ���\n��������� ��������� �����, �� ������\n\
					��������� Google Authenticator �� �����:\n\n{FFFFFF}"SERVER_WEBSITE"/profile/in\n", !"�������", !"������");
				}
			}
		}
		case OLD_PASS: {
			new checkpass[65];
			SHA256_PassHash(inputtext, PlayerInfo[playerid][pSalt], checkpass, 65);
			if(!strlen(inputtext)) return SHOW_PD(playerid, OLD_PASS, DIALOG_STYLE_INPUT, "������������� ������","\n\n{FFFFFF} ������� ��� ������� ������ � ���� ����:", !"�����", !"�������"); 
			if(!(6 <= strlen(inputtext) <= 22)) Msg(playerid, ERR, "�������� ����� ������: �� 6 �� 22-� ��������"), SHOW_PD(playerid, OLD_PASS, DIALOG_STYLE_INPUT, "������������� ������","\n\n{FFFFFF} ������� ��� ������� ������ � ���� ����:", !"�����", !"�������"); 
			if(!strcmp(PlayerInfo[playerid][pPassword], checkpass)) SHOW_PD(playerid, NEW_PASS, DIALOG_STYLE_INPUT, "���� ������ ������","\n\n{FFFFFF} ������� ��� ����� ������ � ���� ����:", !"�����", !"�������"), Log(playerid, "password correct");
			else Msg(playerid, NOTIFICATION, "����� �������� ������."), SHOW_PD(playerid, OLD_PASS, DIALOG_STYLE_INPUT, "������������� ������","\n\n{FFFFFF} ������� ��� ������� ������ � ���� ����:", !"�����", !"�������");
		}
		case NEW_PASS: {
			if(!strlen(inputtext)) return Msg(playerid, NOTIFICATION, "�� ������ �� �����.");
			if(!(6 <= strlen(inputtext) <= 22)) Msg(playerid, NOTIFICATION, "�������� ����� ������: �� 6 �� 22-� ��������");
			new Regex:rg_passwordcheck = Regex_New("^[a-zA-Z0-9]{1,}$");
			if(Regex_Check(inputtext, rg_passwordcheck)){ 
				new salt[11];
				for(new i = 11; --i >= 0;) salt[i] = random(79) + 47;
            	salt[10] = 0;
				SHA256_PassHash(inputtext, salt, PlayerInfo[playerid][pPassword], 65);					
				strmid(PlayerInfo[playerid][pSalt], salt, 0, 11, 11);
				fstring[0] = 0;
				format(fstring, sizeof(fstring), "�� ������� �������� ������. ����� ������: {0093ff}%s", inputtext);
				Msg(playerid, NOTIFICATION, fstring);
				Msg(playerid, NOTIFICATION, "�������� ���� ����� ������ ��� �������� �������� ������� {0093ff}F8");
				@ChangePassword(playerid);
			}
			else return Msg(playerid, NOTIFICATION, "������ ����� �������� ������ �� ����� � ��������� �������� ������ ��������.");
			Regex_Delete(rg_passwordcheck); 
		}
		//![===========================================[GUGLE AUTHENTICATOR by ICBRK[ICEtheBreaker]]===========================================]
		case Gugle: {			
			if(response) {
				switch listitem do {
					case 0: {
						fstring[0] = 0;
						new fstring2[256];
						format(fstring, sizeof(fstring), "��������� Google Authenticator\t\t| %s", (PlayerInfo[playerid][pGugleEnabled] == 0) ? ("{F04245}[���������]") : ("{8FC248}[�������������]"));
						format(fstring2, sizeof(fstring2), 
						"���������� Google Authenticator\n\
						���������� Google Authenticator\t\t| %s", 
						(!PlayerInfo[playerid][pGugleSettings]) ? ("{0093ff}[��� ����� IP]") : ("{0089ff}[������]"));
						SHOW_PD(playerid, Gugle_Settings, DIALOG_STYLE_LIST, fstring, fstring2, !"�������", !"�����");
						fstring2[0] = 0;
					}
					case 1: {
						if(!PlayerInfo[playerid][pGugleEnabled]) Msg(playerid, NOTIFICATION, "�� ������ �������� �� ���������� Google Authenticator!");
						else SHOW_PD(playerid, Gugle_Delete, DIALOG_STYLE_INPUT, !"������������� Google Authenticator", !"\n{FFFFFF}��� �������������, ������� ��������������� ��� �� ���������� � ���� ����:", "����", "������");
					}
				}
			} 
			else {
				cmd::menu(playerid);
			}
		}
		case Gugle_Delete: {
			if(response) {
				new getcode = GoogleAuthenticatorCode(pi[playerid][pGugleAuth], gettime());
				if(isempty(inputtext)) 
					return false;
				else if(strval(inputtext) == getcode) {
					SHOW_PD(playerid, Gugle_Confirm, DIALOG_STYLE_MSGBOX, !"�������������", "\n�� �������, ��� ������ ��������� Google Authenticator �� ������ ��������?\n����������� �������� ���, ����� �������� ���������� �������.", "��", "���");
				}
				else {
					Msg(playerid, ERR, "��� ����� �������!");
					SHOW_PD(playerid, Gugle_Delete, DIALOG_STYLE_INPUT, !"������������� Google Authenticator", !"\n{FFFFFF}��� �������������, ������� ��������������� ��� �� ���������� � ���� ����:", "����", "������");
				}
			}
			else {
				fstring[0] = 0;
				format(fstring, sizeof(fstring), "��������� Google Authenticator\n���������� Google Authenticator");
				SHOW_PD(playerid, Gugle, DIALOG_STYLE_LIST, !"{0093ff}Google Authenticator", fstring, !"�������", "�����");
			}
		}
		case Gugle_Confirm: {
			if(response) {
				PlayerInfo[playerid][pGugleEnabled] = 0;
				PlayerInfo[playerid][pGugleAuth] = 0;
				Msg(playerid, NOTIFICATION, "�� ������� ��������� Google Authenticator.");
				mysql_format(db, query_string, sizeof(query_string), "UPDATE "T_ACC" SET `gugle_auth`, `gugle_enabled` = '%s', '%d' WHERE `names` = '%s'", 
				PlayerInfo[playerid][pGugleAuth], PlayerInfo[playerid][pGugleEnabled], PlayerInfo[playerid][pNames]);
				mysql_tquery(db, query_string);
			}
			else cmd::menu(playerid); 
		}
		case Gugle_Settings: {
			if(response) {
				switch listitem do {
					case 0: {
						if(PlayerInfo[playerid][pGugleEnabled]) Msg(playerid, NOTIFICATION, "Google Authenticator ��� ���������� �� ��������. �������� �� ���������");
						else {
							SHOW_PD(playerid, GugleInfo, DIALOG_STYLE_MSGBOX, !"1-��� ���", !"\n\n{FFFFFF}������ � ����, ��� ���� � ��� ��� ����������, �� ��� �����\n���������. ������� � {FDC459}Play Market ��� App Store{FFFFFF} � ����\nGoogle Authenticator.\n\n{B0FD59}�����? �������� ��������� ����������.\n\n�������: 'Enter', ����� ������ � ���������� �����.\n\n", !"������", !"������");
						}
					}
					case 1: {
						if(!PlayerInfo[playerid][pGugleSettings]) {
							PlayerInfo[playerid][pGugleSettings] = 1;
							Msg(playerid, NOTIFICATION, "��� Google Auth ������ ����� ������������� ��� ������ ����� � ����.");
						} else {
							PlayerInfo[playerid][pGugleSettings] = 0;
							Msg(playerid, NOTIFICATION, "��� Google Auth ������ ����� ������������� ��� ����� ������ IP-������.");
						}
					}
				}
			}
			else {
				fstring[0] = 0;
				format(fstring, sizeof(fstring), "��������� Google Authenticator\n���������� Google Authenticator");
				SHOW_PD(playerid, Gugle, DIALOG_STYLE_LIST, !"{0093ff}Google Authenticator", fstring, !"�������", !"�����");
			}
		}
		case GugleInfo: {
			if(response) SHOW_PD(playerid, GugleInfo2, DIALOG_STYLE_MSGBOX, !"2-�� ���", !"\n\n{FFFFFF}�������! �� ��������� ����������, ������ ������� ��� ��������.\n�������{FDC459}+{FFFFFF} � ����������, � ����� ������� �� ����.\n\n{B0FD59}�������: 'Enter', ����� ������ � ���������� �����.\n\n", !"������", !"������");
		}
		case GugleInfo2: {
			if(response) {
				fstring[0] = 0;
				PlayerInfo[playerid][pGugleAuth] = 0;
				for(new i; i < 16; i++) {
					PlayerInfo[playerid][pGugleAuth][i] = random(25) + 65;
					//strcat(PlayerInfo[playerid][pGugleAuth], AuthSymbols[random(sizeof(symbols))]);
				}
				format(fstring, sizeof(fstring), 
				"{FFFFFF}���� �� ����� �������� ����� �� Android, �� �������� \"������ ����\"\n\
				���� �� ����� �������� ����� IOS, �� �������� \"���� �������\"\n\n\
				� ���� \"�������\" �������: {0093ff}%s@rppaurora\n\
				{FFFFFF}� ���� \"����\" �������: {0093ff}%s\n\n\
				{FFFFFF}������� ����, ������������� �� ��������, ������ ��������� ����, ��� ���������� �� ������� ", 
				PlayerInfo[playerid][pNames], PlayerInfo[playerid][pGugleAuth]);
				SHOW_PD(playerid, GugleInfo3, DIALOG_STYLE_MSGBOX, !"3-��� ���", fstring, !"������", !"������");
			}
		}
		case GugleInfo3: {
			if(response) {
				fstring[0] = 0;
				format(fstring, sizeof(fstring), 
				"{FFFFFF}��� ���������� ��������� Google Authenticator, ������� ��������������� ��� �� ����������\n\
				� ���� ����:");
				SHOW_PD(playerid, GugleInfo4, DIALOG_STYLE_INPUT, !"��������� ���", fstring, !"������", !"������");
			}
		}
		case GugleInfo4: {
			if(response) {
				new getcode = GoogleAuthenticatorCode(PlayerInfo[playerid][pGugleAuth], gettime());
				if(strval(inputtext) == getcode) { 
					SHOW_PD(playerid, GugleInfo5, DIALOG_STYLE_MSGBOX, !"�����", !"{FFFFFF}�� ������� ���������� Google Authenticator � ������ ��������.\n������ �� ������ �������, ����� ����� ������������� Auth-���.", "�����", "");
					PlayerInfo[playerid][pGugleEnabled] = 1;
					mysql_format(db, query_string, sizeof(query_string), "UPDATE "T_ACC" SET `gugle_auth` = '%e', `gugle_enabled` = '%d' WHERE `names` = '%e'", 
					PlayerInfo[playerid][pGugleAuth], PlayerInfo[playerid][pGugleEnabled], PlayerInfo[playerid][pNames]);
					mysql_tquery(db, query_string);
				}
				else {
					Msg(playerid, ERR, "��� ����� �������!");
					fstring[0] = 0;
					format(fstring, sizeof(fstring), 
					"{FFFFFF}��� ���������� ��������� Google Authenticator, ������� ��������������� ��� �� ����������\n\
					� ���� ����:");
					SHOW_PD(playerid, GugleInfo4, DIALOG_STYLE_INPUT, !"��������� ���", fstring, !"������", !"������");
				}
			}
			else {
				PlayerInfo[playerid][pGugleAuth] = 0;
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
	query_string[0] = 0;
	// print("yesss");
	mysql_format(db, query_string, sizeof query_string, "SELECT `password`, `salt`, `lastIP`, `gugle_auth`, `gugle_settings`, `gugle_enabled` FROM "T_ACC" WHERE `names` = '%e'", GetName(playerid));
	mysql_tquery(db, query_string, "@_mysqlGetPlayerAccount", "i", playerid);
}

@_mysqlGetPlayerAccount(playerid);
@_mysqlGetPlayerAccount(playerid) {
	SetPlayerColor(playerid, 0xFF);

	if(cache_num_rows() != 0) {
		PlayerBadAttempt{playerid} = 4;
		cache_get_value_name(0, "password", PlayerInfo[playerid][pPassword], 65);
		cache_get_value_name(0, "salt", PlayerInfo[playerid][pSalt], 11);
		cache_get_value_name(0, "lastIP", PlayerInfo[playerid][pLastIP], 16);
		cache_get_value_name(0, "gugle_auth", PlayerInfo[playerid][pGugleAuth], 17);
		cache_get_value_name_int(0, "gugle_settings", PlayerInfo[playerid][pGugleSettings]);
		cache_get_value_name_int(0, "gugle_enabled", PlayerInfo[playerid][pGugleEnabled]);
		ShowLoginDialog(playerid);
	}
	else {
		printf("isrpnick = %d ; nick = %s", IsRPNick(GetName(playerid)), GetName(playerid));
		
		if(!IsRPNick(GetName(playerid))) {
		    SHOW_PD(playerid, dNull, DIALOG_M, !""LightGreen_color"����������", !"{FFFFFF}��� ��� �� ������������� �������� �������.\n������� ����� ��� � ������ � ������� "LightGreen_color"�����.\n\n{FFFFFF}������: "LightGreen_color"Carl_Jupiter", !"�����", "");
		    return Kick(playerid);
	    }

		ShowRegDialog(playerid);
	}
	return 1;		
}
@StopAnimation(playerid);
@StopAnimation(playerid) return ApplyAnimation(playerid, "PED", "facanger", 4.1, 0, 1, 1, 1, 1);

@_IncorrectPassword(playerid);
@_IncorrectPassword(playerid) {
	if(!cache_num_rows()) {
		--PlayerBadAttempt{playerid};
		printf("%d attempts", PlayerBadAttempt{playerid});
		fstring[0] = 0;
		format(fstring, (92 + (-2+4)),"\
			{FF0000}�� ����� �������� ������!\n\
			{FFFFFF}������� ��� ����� ������:{0f4900} %d", PlayerBadAttempt{playerid});

		SHOW_PD(playerid, d_Log, DIALOG_P, "{FFA500}�����������", fstring, "�����", "������");
		fstring[0] = EOS;
	} else {LoginPlayer(playerid);}

	if(++PlayerBadAttempt{playerid} <= 0) {
		Msg(playerid, NOTIFICATION, SERVER_CLOSED);
		return Kick(playerid);
	}

	return 1; 
}
@ChangePassword(playerid);
@ChangePassword(playerid) {
	query_string[0] = 0;
	mysql_format(db, query_string, sizeof(query_string), "UPDATE "T_ACC" SET `password` = '%e', `salt` = '%e' WHERE `id` = '%d'", PlayerInfo[playerid][pPassword], PlayerInfo[playerid][pSalt], PlayerInfo[playerid][pID]);
	mysql_tquery(db, query_string);
	return 1;
} 

stock SetPlayerPosEx() {
	����� ����������� � ������� ������� ���� �������� ��� ���������� � �������
	return 1;
}

stock ShowLoginDialog(playerid)
{
	fstring[0] = 0;
	PlayerBadAttempt{playerid}--;
	format(fstring, (142 + (-2+4)),"\
		{FFFFFF}����� ���������� �� {daa44a}"SERVER_NAME"\n\n\
		{FFFFFF}������� ���� ������\n\
		{FFFFFF}������� ��� ����� ������:{0f4900} %d", PlayerBadAttempt{playerid});
	SHOW_PD(playerid, d_Log, DIALOG_P, "{FFA500}�����������", fstring, "�����", "������");
	
	return 1;	
}
stock GetCurrentTime() //! �������� ������� ����������� �������� ����� ������� � �������� ����� ������
{
	return 1;
}

//! ��� ������ ��� vehicle_system
// stock RepairCar(playerid) {
// 	fADM(playerid, ADM_FOUNDER);
// 	new 
// 		vehID = GetPlayerVehicleID(playerid);

// 	if (autoRepairCar[playerid] && GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
// 		RepairVehicle(vehID);
// 		SetVehicleHealth(vehID, 1000.0);
// 	}

// 	return 1;
// }

stock ShowRegDialog(playerid)
{
	fstring[0] = 0;
	format(fstring, (420 + (-2+MAX_PLAYER_NAME)),"{FFFFFF}������������, {0093ff}%s\n\n\
		{FFFFFF}������ ������� {FFA500}�����������{FFFFFF} � ���� ������.\n\
		��� �����������, ������� ������ � ���� ����.\n\
		�� ����� ��������� ��� ���������� ����������� �� �������.\n\n\
		\t\t{FFFFFF}���������� ��� ����� ������:\n\
		\t\t- {FFA500}������ ������ �������� �� �������� � �� ��������� �����\n\
		\t\t- {FFA500}������ �� ������ ���� ������ 6 � ������ 22 ��������.", pi[playerid][pNames]);
	SHOW_PD(playerid, dReg1, DIALOG_P, !"{FFFFFF}[1/4]{FFA500} ������", fstring, !"�����",!"������");	
	return 1;
}
stock ShowUpdateSettings(playerid, vkontakte[] = " ", discord[] = " ", telegram[] = " ") {
	fstring[0] = 0;

	new 
		lang = GetLanguage(playerid);

	format(fstring, sizeof(fstring), "�������\t���������\n\
		{AFAFAF}����� �����:\t%s\n\
		{AFAFAF}E-mail:\t%s\n\
		{AFAFAF}������� ������\t{0093ff}[ ������� ]\n\
		{AFAFAF}������� PIN-���\t{0093ff}[ ���������� ����� ]\n\
		{AFAFAF}���������� �����:\t%s\n\
		{AFAFAF}��������\t{0093ff}[ ����� ������ ]\n\
		{AFAFAF}������ ������ ����������:\t%s\n\
		{AFAFAF}Google Authenticator\t{0093ff}����-����� �������\n\
		{AFAFAF}���� ����� �����:\t%s\n\
		{AFAFAF}���� ��������� / ����������:\t{0093ff} [ %s ]\n\
		{AFAFAF}�������� ���������/Discord/TG:\t{0093ff} [ ������� ]",
		pi[playerid][pShowName] ? ("{008000}[���]") : ("{FF0000}[����]"),
		pi[playerid][pEmail],
		pi[playerid][pHungryBar] ? ("{9ACD32}[���]") : ("{B83434}[����]"),
		pi[playerid][pShowDocuments] ? ("{9ACD32}[���]") : ("{FF0000}[����]"),
		pi[playerid][pEmailAuth] ? ("{9ACD32}[���]") : ("{B83434}[����]"),
		((lang == 1) ? ("�������") : ((lang == 2) ? ("����") : (lang == 3) ? ("�����������") : ("���")))
		// ((lang == 1) ? ("{9ACD32}�������") : (lang == 2)) ? ("{9ACD32}����")) : (lang == 3) ? ("{9ACD32}�����������") : 0)),
		// strlen(vkontakte) > 2 ? vkontakte : ("{B83434}�� ��������")
	);
	


	// ((language == 1) ? 1 : ((language == 2) ? 2 : (language == 3) ? 3 : 0));
/*
	((PlayerInfo[playerid][pLanguage] == 1) ? ("�������") : ((PlayerInfo[playerid][pLanguage] == 2) ? ("����������")) : ((PlayerInfo[playerid][pLanguage] == 3) ? ("�����������") : 0)))),
	*/

	//if(PlayerInfo[playerid][pVkontakte]) && strlen(vkontakte) < 2 return GetVKName(playerid);
	return SHOW_PD(playerid, d_PLAYER_SETTINGS, DIALOG_STH, !"��������� ���������", fstring, !"�����", "������");
}
stock ResetVariables(playerid) {
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
	pi[playerid][pEmailConfirmed] 	=
	pi[playerid][pLanguage]			=

	pi[playerid][pVkontakte]		=
	pi[playerid][pDiscord]			=
	pi[playerid][pTelegram]			=

	_:nitroHype[playerid]			=
	_:autoRepairCar[playerid]       =

	PlayerBadAttempt{playerid} 		= 0;
	inadmcar{playerid}				= -1;

	printf("(ID: %d) (NAME: %s) id ��������� ������", playerid, GetName(playerid));

	for(new i = 5; --i > 0;) {
    	pi[playerid][pDrivingCategories][i] = 0;
	}

	//! �������� ��� ����� ������ ���������� ������ ����� ������ 

	pi[playerid][pNames] = 0;
	pi[playerid][pPassword] = 0;
	pi[playerid][pEmail] = 0;

	return 1;
}


stock LicType(id) {
	new type[13];

	switch(id) {
		case 0: {type="����";}
		case 1: {type="�����������";}
		case 2: {type="��������";}
		case 3: {type="������";}
		case 4: {type="������";}
		default: {type="None";}
	}

	return type;
}
stock GiveLic(playerid, lic_id) {
	if (IsLicenseValid(lic_id)) return 1;

	pi[playerid][pDrivingCategories][lic_id] = 1;

	fstring[0] = 0;
	query_string[0] = 0;
	
	format(fstring, (15 + (-2+6) + (-2+6) + (-2+6) + (-2+6) + (-2+6)),"%i,%i,%i,%i,%i", pi[playerid][pDrivingCategories][0], pi[playerid][pDrivingCategories][1], pi[playerid][pDrivingCategories][2], pi[playerid][pDrivingCategories][3], pi[playerid][pDrivingCategories][4]);
	
	mysql_format(db, query_string, (97 + (-2+38) + (-2+MAX_PLAYER_NAME)),"UPDATE "T_ACC" SET `licenses`='%s' WHERE `names`='%e'", fstring, GetName(playerid));
	mysql_tquery(db, query_string);

	printf("%s (%d) ������� ������� ����� � licid %d � � ����� %s", GetName(playerid), playerid, lic_id, LicType(lic_id));

	return 1;
}


stock CreateAccount(playerid)
{
	PlayerInfo[playerid][pMoney]	 		= BONUS_MONEY;
	PlayerInfo[playerid][pLevel] 			= START_LEVEL;
	PlayerInfo[playerid][pSkin] 	 		= DEFAULT_SKIN;
	PlayerInfo[playerid][pWantedLevel] 		= 0;

	new Year, Month, Day;
	getdate(Year, Month, Day);
	new date[13];
	format(date, (13 + (-2+4) + (-2+4) + (-2+6)), "%02d.%02d.%d", Day, Month, Year);

	//! ��� ������� ����������
	static 
		firstName[16],
		lastName[16];

	splitName(GetName(playerid));

	fstring[0] = 0;
	format(fstring, (11 + (-2+32) + (-2+32)), "%s %s None", firstName, lastName);
	
	query_string[0] = 0;
	mysql_format(db, query_string, (217 + (-2+MAX_PLAYER_NAME) + (-2+67) + (-2+13) + (-2+18) + (-2+15) + (-2+16) + (-2+32) + (-2+4) + (-2+4) + (-2+4) + (-2+6) + (-2+6) + (-2+6) + (-2+6) + (-2+66)), "INSERT INTO "T_ACC" (`names`, `password`, `salt`, `regIP`, `regData`, `lastIP`, `email`,`sex`,`admin`, `currentskin`, `money`, `level`, `wanted_level`,`fio`) VALUES ('%e','%e','%e','%e','%e','%e','%e',%d,%d,%d,%d,%d,%d,'%e')", GetName(playerid), PlayerInfo[playerid][pPassword], PlayerInfo[playerid][pSalt], PlayerInfo[playerid][pIP], date, PlayerInfo[playerid][pLastIP], PlayerInfo[playerid][pEmail], PlayerInfo[playerid][pSex], PlayerInfo[playerid][pAdmin], PlayerInfo[playerid][pSkin], PlayerInfo[playerid][pMoney], PlayerInfo[playerid][pLevel], pi[playerid][pWantedLevel], pi[playerid][pFIO]);
	mysql_tquery(db, query_string);
	query_string[0] = EOS;
	fstring[0] = EOS;

	printf("22 (%s) %s", strlen(query_string), query_string);

	playerLoggedStatus{playerid} = true;

	SpawnPlayer(playerid);
	return 1;
}

function LoadAdmins() {
	//! ����� �������� �������� ������� � ��� ������� � ������� � pi[playerid][pID] �� ������� ��������������
	return 1;
}

function LoginPlayer(playerid) {
	new getIP[16];

	cache_get_value_name(0, "email", pi[playerid][pEmail], 32);
	cache_get_value_name_int(0, "sex", pi[playerid][pSex]);
	cache_get_value_name_int(0, "admin", pi[playerid][pAdmin]);
	cache_get_value_name_int(0, "currentskin", pi[playerid][pSkin]);
	cache_get_value_name_int(0, "money", pi[playerid][pMoney]);
	cache_get_value_name_int(0, "level", pi[playerid][pLevel]);

	cache_get_value_name_int(0, "language", pi[playerid][pLanguage]);
	pi[playerid][pLanguage] ^= LANG_RU ^ ((pi[playerid][pLanguage] == 2) ? LANG_USA : LANG_BELARUS);

	//! ����� � ��������� ������ � pi � �������� (��������� ������ ��� ������ �� ��� ������� passports) 
	//? �������� ������� ����������
	cache_get_value_name_int(0, "idPassportInRegister", pi[playerid][pPassportID]);
	cache_get_value_name(0, "fio", pi[playerid][pFIO]);

	query_string[0] = 0;
	mysql_format(db, query_string, (47 + (-2+6)), "SELECT * FROM `passports` WHERE `player_id`=%d", pi[playerid][pID]);
	mysql_tquery(db, query_string, "@LoadDocumentSystem", "d", playerid);
	query_string[0] = EOS;
	// --


	cache_get_value_name(0, "licenses", pi[playerid][pDrivingQuery]); //! load licenses 1
	sscanf(pi[playerid][pDrivingQuery], "p<,>a<i>[5]", pi[playerid][pDrivingQuery]); //! load licenses 2
	printf("debug: pDriveQuery %s", pi[playerid][pDrivingQuery]); //! debug loading 3

	// --

	SetPlayerScore(playerid, pi[playerid][pLevel]);
	GivePlayerMoney(playerid, pi[playerid][pMoney]);
	SetPlayerSkin(playerid, pi[playerid][pSkin]);

	pi[playerid][pLastIP] = GetPlayerIp(playerid, getIP, 16);

	TogglePlayerSpectating(playerid, 0);

	if(pi[playerid][pAdmin] > 0) Iter_Add(ADM_LIST, playerid);
	// SavePlayer(playerid);

	playerLoggedStatus{playerid} = true;
	SpawnPlayer(playerid);

	return 1;
}
/*
enum passport {
	ID,
	FIO[64],
	ID_IN_REGISTER,
	NOMER[8],
	SERIAL[6],
	PROPISKA[64],
	SEX,
	IFCHANGEDSEX,
	ISSUED,
	WHOMISSUED,
	DATEOFBIRTHDAY,
	OTHER_DOCUMENTS[4] //! ����� ����� ������ ��������� ����������
}
new 
	passport_info[MAX_PLAYERS][passport];*/

// select * from `passports` WHERE id=%d
@LoadDocumentSystem(player);
@LoadDocumentSystem(player) {
	if(cache_num_rows() != 0) {
		if (pi[player][pPassport]) return 1;
		else {
			passport_info[player][NOMER] = GenerateRandNomerOfDocument();
			passport_info[player][SERIAL] = GenerateRandSerialOfDocument();
			@LoadDocumentSystem(player);
		}

		//! ������� ����� � ����������� JOIN sql (������ ������������ ������ � ������ ��������)
		//! pi[playerid][pPassportID] == passport_info[player][ID_IN_REGISTER]
	
		cache_get_value_name_int(0, "idRegister", passport_info[player][ID_IN_REGISTER]);
		strcat(pi[player][pFIO], passport_info[player][FIO]);

		printf("%s fio", passport_info[player][FIO]);

		switch (pi[player][pSex]) {
			case 0: passport_info[player][SEX] = "�������";
			case 1: passport_info[player][SEX] = "�������";
		}

		cache_get_value_name_int(0, "p_ifchangedsex", passport_info[player][IFCHANGEDSEX]); //! ���� ���� ����� ����
		cache_get_value_name(0, "p_issued", passport_info[player][ISSUED]); //! ������ ����
		cache_get_value_name(0, "p_issuedbywhom", passport_info[player][WHOMISSUED]); //! ��� ����� 
		cache_get_value_name(0, "p_dateofbirthday", passport_info[player][DATEOFBIRTHDAY]); //! ��� ����������� ��������
	} else print("[LoadDocumentSystem]: failed!");

	return 1;
}
stock SaveDocuments() {
	//! ����� ����� ���������� ����������

	return 1;
}
stock GenerateRandNomerOfDocument() {
	
	return 1;
}
stock GenerateRandSerialOfDocument() {

	return 1;
}


stock ShowStats(playerid) {
	fstring[0] = 0;

	format(fstring, sizeof(fstring), "�������\t����\n\
		{AFAFAF}��� ID:\t {0093ff} %d\n\
		{AFAFAF}��� ������� ���������:\t {0093ff} %s\n\
		{AFAFAF}���� �����:\t {0093ff} %s\n\
		{AFAFAF}������� �������:\t {0093ff} %d\n\
		{AFAFAF}�������:\t %s\n\
		{AFAFAF}������������� �� ���������:\t %s",
		playerid, //! pi[playerid][pID] ��� �� ������ � ����
		pi[playerid][pNames],
		pi[playerid][pEmail],
		pi[playerid][pWantedLevel],
		pi[playerid][pPassport] ? ("{9ACD32}[����]") : ("{F04245}[���]"),
		pi[playerid][pDrivingLic] ? ("{9ACD32}[����]") : ("{F04245}[���]")
	);

	return SHOW_PD(playerid, dNull, DIALOG_STH, !"���������� ������", fstring, !"�����", "������");
}

stock SavePlayer(playerid) {
	if(!playerLoggedStatus{playerid}) return 0;

	//? ��������� � �������� ������ ��� ����������� ���������� � �� (�������������)
	pi[playerid][pDrivingQuery][0] = 0;
	format(pi[playerid][pDrivingQuery], 20, "%i,%i,%i,%i,%i", pi[playerid][pDrivingCategories][0], pi[playerid][pDrivingCategories][1], pi[playerid][pDrivingCategories][2], pi[playerid][pDrivingCategories][3], pi[playerid][pDrivingCategories][4]);
	// SaveDocuments();

	query_string[0] = EOS;
	mysql_format(db, query_string, (192 + (-2+18) + (-2+34) + (-2+4) + (-2+6) + (-2+4) + (-2+6) + (-2+4) + (-2+66) + (-2+4)), "UPDATE "T_ACC" SET `lastIP` = '%e', `email` = '%e', `sex` = %d, `admin` = %d, `currentskin` = %d, `money` = %d, `level` = %d, `wanted_level` = %d, `licenses` = '%s', `email_confirmed` = %d, `fio` = '%e', `language`='%d' WHERE `id` = %d", PlayerInfo[playerid][pLastIP], PlayerInfo[playerid][pEmail], PlayerInfo[playerid][pSex], PlayerInfo[playerid][pAdmin], PlayerInfo[playerid][pSkin], PlayerInfo[playerid][pMoney], PlayerInfo[playerid][pLevel], PlayerInfo[playerid][pWantedLevel], PlayerInfo[playerid][pDrivingQuery], PlayerInfo[playerid][pEmailConfirmed], pi[playerid][pFIO], pi[playerid][pLanguage], playerid);
	mysql_tquery(db, query_string);

	return 1;
}

@MakeAdmin(playerid, const name[], level);
@MakeAdmin(playerid, const name[], level) {
	static name_of_id;
	name_of_id = GetPlayerID(name);

	if(cache_num_rows() == 0) {
		if(!level) {
			query_string[0] = 0;

			if(name_of_id != INVALID_PLAYER_ID) PlayerInfo[name_of_id][pAdmin] = 0;

			mysql_format(db, query_string, (41 + (-2+MAX_PLAYER_NAME)), "DELETE FROM `admin` WHERE `names` = '%e' LIMIT N", name);
			mysql_tquery(db, query_string);

			query_string[0] = EOS;
			mysql_format(db, query_string, (52 + (-2+MAX_PLAYER_NAME)), "UPDATE `admin` SET `level`=0 WHERE `names` = '%e' LIMIT N", name);
			mysql_tquery(db, query_string);

			fstring[0] = 0;
			format(fstring, sizeof(fstring),"������������� {0093ff}%s"Default" ������ �� ����� ������� � �������.", name);
			Msg(playerid, NOTIFICATION, fstring);
		}
		else {
			if(name_of_id != INVALID_PLAYER_ID) pi[name_of_id][pAdmin] = level;

			query_string[0] = 0;
			mysql_format(db, query_string, (55 + (-2+6) + (-2+MAX_PLAYER_NAME)), "UPDATE `admin` SET `level` = '%d' WHERE `names` = '%e' LIMIT N", level, name);
			mysql_tquery(db, query_string);
			mysql_format(db, query_string, (58 + (-2+6) + (-2+MAX_PLAYER_NAME)), "UPDATE "T_ACC" SET `admin` = '%d' WHERE `names` = '%e' LIMIT N", level, name);
			mysql_tquery(db, query_string);

			fstring[0] = 0;
			format(fstring, sizeof(fstring), "������������� {0093ff}%s"Default" ������� ��������� �� {0093ff}%i"Default" ������ �������.", name, level);
			Msg(playerid, NOTIFICATION, fstring);
		}
	}
	else {
		query_string[0] = 0;

		if(!level) return Msg(playerid, NOTIFICATION, "��������� ����� �� ����� ������� � �������!");

		mysql_format(db, query_string, (77 + (-2+(MAX_PLAYER_NAME)) + (-2+6)), "INSERT INTO `admin` (name,level,last_connect) VALUES ('%e', '%d', CURDATE())", name, level);
		mysql_tquery(db, query_string);
		mysql_format(db, query_string, (54 + (-2+6) + (-2+MAX_PLAYER_NAME)), "UPDATE "T_ACC" SET admin = '%d' WHERE names = '%e'", level, name);
		mysql_tquery(db, query_string);
		query_string[0] = EOS;

		fstring[0] = 0;
		format(fstring, sizeof(fstring),"{0093ff}%s"Default" ������ ����� ������ � ������� � ������ � ���� ������. ��������� ������� �������: %i", name, level);
		Msg(playerid, ERR, fstring);

		if(name_of_id != INVALID_PLAYER_ID) {
			pi[name_of_id][pAdmin] = level;

			mysql_format(db, query_string, (52 + (-2+6) + (-2+MAX_PLAYER_NAME)), "UPDATE "T_ACC" SET admin '%d' WHERE names = '%e'", PlayerInfo[playerid][pAdmin], name);
			mysql_tquery(db, query_string);
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
	for(new i=sizeof(NameList); --i > 0;) {
		if (!strcmp(string, NameList[i])) return 1;
		// if(!GetString(string, NameList[i])) return 1;
	}
	return 0;
}
stock IsRPNick(const nick[]) {
    new Regex:r_str = Regex_New("([A-Z]{1})([a-z]+)_([A-Z]{1})([a-z]+)");
    new check = Regex_Check(nick, r_str);
    Regex_Delete(r_str);
    return check;
}

cmd:testimdanil(playerid) {
	if (GetName(playerid) == CheckExceptionName(GetName(playerid))) {
		SEND_CM(playerid, format_white, "������ ��� � ������!!!!");
	} else {
		SEND_CM(playerid, format_white, "� ����� � ����");
	}

	return 1;
}

stock GetPlayerID(const string[]) {
    new testname[MAX_PLAYER_NAME];
	foreach(new i:Player) {
		GetPlayerName(i, testname, sizeof(testname));
		if(!strcmp(testname, string, true)) return i;
	}
	return INVALID_PLAYER_ID;
}

stock ConnectSQL() {
	#if MYSQL_IS_LOCAL == true 
		db = mysql_connect(LOCAL_SQL_HOSTNAME, LOCAL_SQL_USERNAME, LOCAL_SQL_PASSWORD, LOCAL_SQL_DATABASE);
		mysql_log(ERROR | WARNING); 
	#else
		db = mysql_connect(SQL_HOSTNAME, SQL_USERNAME, SQL_PASSWORD, SQL_DATABASE);
		mysql_log(DEBUG); 
	#endif
	switch(mysql_errno()){
		case 0: print("����������� ������� [��� ������ � ����� ���������� � �����]");
	    case 1044: return print("����������� �� ������� [�� �������� ��� ��� ��� ����� ��-����� ����]");
	    case 1045: return print("����������� �� ������� [���� ������ ������������ ������ �� ������ ������(((]");
	    case 1049: return print("����������� �� ������� [�� �� ���� ��� ���� �������]");
	    case 2003: return print("����������� �� ������� [���� ���� ������� ������ ��� ��������]");
		case 2002: return print("����������� �� ������� [������-�� ������ � �� � ���� �� �����]");
	    case 2005: return print("����������� �� ������� [�� �� ����� � ���� �� �����]");
	    default: return printf("����������� �� ������� [����� ������ ����: %d]", mysql_errno());
	}
	return 1;
}