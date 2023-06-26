//!============>> Copyright (c) 2017-2023 Darkside Interactive, Ltd. All rights reserved. <<============//
//
//? ����: ������� ���� � ������������
//
//!=====================================================================================================//

/*
 * ��������� �������������� ��������� � ��� ������.
 *
 * ���������:
 *   text[] = " " - �����, ������� ����� ������� ������.
 *
 * �������� ����:
 *   ������ ���� �����, ����� ����.
 */
stock Info(playerid, const text[] = " ") {
	if (IsRangeValid(text, 64), isempty(text)) return false;
	fstring[0] = 0;
	format(fstring, (43 + (-2+66)), ""Inf_color"[%s]"Default": %s",  
	(PlayerInfo[playerid][pLanguage]) ? ("����������") : (PlayerInfo[playerid][pLanguage]) ? ("Information") : ("����������"), text);
	return SEND_CM(playerid, format_white, fstring), true;
}
/*
 * ��������� ������ � ��� ������.
 *
 * ���������:
 *   text[] = " " - �����, ������� ����� ������� ������.
 *
 * �������� ����:
 *   ������ ���� �����, ����� ����.
 */
stock Error(playerid, const text[] = " ") {
	if (IsRangeValid(text, 64), isempty(text)) return false;
	fstring[0] = 0;
	format(fstring, (43 + (-2+66)), ""Err_color"[%s]"Default": %s", 
	(PlayerInfo[playerid][pLanguage]) ? ("������") : (PlayerInfo[playerid][pLanguage]) ? ("Error") : ("�������"), text);
	return SEND_CM(playerid, format_white, fstring), true;
}
/*
 * ��������� ��������� �� ������ � ��� ������.
 *
 * ���������:
 *   text[] = " " - �����, ������� ����� ������� ������.
 *
 * �������� ����:
 *   ������ ���� �����, ����� ����.
 */
stock Success(playerid, const text[] = " ") {
	if (IsRangeValid(text, 64), isempty(text)) return false;
	fstring[0] = 0;
	format(fstring, (43 + (-2+66)), ""Log_color"[%s]"Default": %s", 
	(PlayerInfo[playerid][pLanguage]) ? ("�������") : (PlayerInfo[playerid][pLanguage]) ? ("Success") : ("���������"), text);
	return SEND_CM(playerid, format_white, fstring), true;
}
/*
 * ��������� �������������� � ��� ������.
 *
 * ���������:
 *   text[] = " " - �����, ������� ����� ������� ������.
 *
 * �������� ����:
 *   ������ ���� �����, ����� ����.
 */
stock Warning(playerid, const text[] = " ") {
	if (IsRangeValid(text, 64), isempty(text)) return false;
	fstring[0] = 0;
	format(fstring, (43 + (-2+66)), ""Warn_color"[%s]"Default": %s", 
	(PlayerInfo[playerid][pLanguage]) ? ("��������������") : (PlayerInfo[playerid][pLanguage]) ? ("Warning") : ("������������"), text);
	return SEND_CM(playerid, format_white, fstring), true;
}
/*
 * ��������� ����������� � ��� ������.
 *
 * ���������:
 *   text[] = " " - �����, ������� ����� ������� ������.
 *
 * �������� ����:
 *   ������ ���� �����, ����� ����.
 */
stock Notification(playerid, const text[] = " ") {
	if (IsRangeValid(text, 64), isempty(text)) return false;
	fstring[0] = 0;
	format(fstring, (43 + (-2+66)), ""Log_color"[%s]"Default": %s", 
	(PlayerInfo[playerid][pLanguage]) ? ("�����������") : (PlayerInfo[playerid][pLanguage]) ? ("Notification") : ("������������"), text);
	return SEND_CM(playerid, format_white, fstring), true;
}
/*
 * ��������� ��� � ����� ������������.
 *
 * ���������:
 *   text[] = " " - �����, ������� ����� ������� ������������.
 *
 * �������� ����:
 *   ������ ���� �����, ����� ����.
 */
stock Log(playerid, const text[] = " ") { //! ������ ��� 9 ������
	if (IsRangeValid(text, 64), isempty(text)) return false;
	fstring[0] = 0;
	format(fstring, (43 + (-2+66)), ""Log_color"[DEBUG]"Default": %s", text);
	return SEND_CM(playerid, format_white, fstring), true;
}
/*
 * ��������� ��������� � ������� ADM | ICBRK.
 *
 * ���������:
 *   text[] = " " - �����, ������� ����� ������� �������.
 *
 * �������� ����:
 *   ������ ���� �����, ����� ����.
 */
stock ADMMessage(const text[] = " ") {
	foreach(new i:ADM_LIST); {
		if (IsRangeValid(text, 64), isempty(text)) return false; 
		fstring[0] = 0;
		format(string, (43 + (-2+66)), ""ADM_color"[ADM]"Default": %s", text);
		return SEND_CM(i, format_white, fstring), true;
	}
}