//******************************************************************************************
//	MOBSI_MAKERUNE
//******************************************************************************************
FUNC VOID MAKERUNE_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_MAKERUNE;
		Ai_ProcessInfos(her);
	};
};

//******************************************************************************************
INSTANCE PC_MakeRune_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_MakeRune_End_Condition;
	information							=	PC_MakeRune_End_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC INT PC_MakeRune_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		return true;
	};
};

FUNC VOID PC_MakeRune_End_Info()
{
	CreateInvItem (hero, ItMi_RuneBlank);
	B_ENDPRODUCTIONDIALOG();
};
/*
//******************************************************************************************
INSTANCE PC_Circle_Mys1 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Circle_Mys1_Condition;
	information							=	PC_Circle_Mys1_Info;
	permanent							=	true;
	description							=	NAME_SPL_Mys1;
};
FUNC INT PC_Circle_Mys1_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_MYS)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 1)
	{	return true;	};
};
FUNC VOID PC_Circle_Mys1_Info()
{
	CreateInvItem (hero, ItRu_Mys1);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Mys2 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Circle_Mys2_Condition;
	information							=	PC_Circle_Mys2_Info;
	permanent							=	true;
	description							=	NAME_SPL_Mys2;
};
FUNC INT PC_Circle_Mys2_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_MYS)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 2)
	{	return true;	};
};
FUNC VOID PC_Circle_Mys2_Info()
{
	CreateInvItem (hero, ItRu_Mys2);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Mys3 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_Circle_Mys3_Condition;
	information							=	PC_Circle_Mys3_Info;
	permanent							=	true;
	description							=	NAME_SPL_Mys3;
};
FUNC INT PC_Circle_Mys3_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_MYS)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 3)
	{	return true;	};
};
FUNC VOID PC_Circle_Mys3_Info()
{
	CreateInvItem (hero, ItRu_Mys3);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Mys4 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_Circle_Mys4_Condition;
	information							=	PC_Circle_Mys4_Info;
	permanent							=	true;
	description							=	NAME_SPL_Mys4;
};
FUNC INT PC_Circle_Mys4_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Mys)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 4)
	{	return true;	};
};
FUNC VOID PC_Circle_Mys4_Info()
{
	CreateInvItem (hero, ItRu_Mys4);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Mys5 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_Circle_Mys5_Condition;
	information							=	PC_Circle_Mys5_Info;
	permanent							=	true;
	description							=	NAME_SPL_Mys5;
};
FUNC INT PC_Circle_Mys5_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_MYS)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 5)
	{	return true;	};
};
FUNC VOID PC_Circle_Mys5_Info()
{
	CreateInvItem (hero, ItRu_Mys5);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
*/
//******************************************************************************************
INSTANCE PC_Circle_GeoStone (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Circle_GeoStone_Condition;
	information							=	PC_Circle_GeoStone_Info;
	permanent							=	true;
	description							=	NAME_SPL_GeoStone;
};
FUNC INT PC_Circle_GeoStone_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Geo)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 0)
	{
		return true;
	};
};
FUNC VOID PC_Circle_GeoStone_Info()
{
	CreateInvItem (hero, ItRu_GeoStone);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
/*
//******************************************************************************************
INSTANCE PC_Circle_Geo2 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Circle_Geo2_Condition;
	information							=	PC_Circle_Geo2_Info;
	permanent							=	true;
	description							=	NAME_SPL_Geo2;
};
FUNC INT PC_Circle_Geo2_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Geo)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 2)
	{	return true;	};
};
FUNC VOID PC_Circle_Geo2_Info()
{
	CreateInvItem (hero, ItRu_Geo2);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Geo3 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_Circle_Geo3_Condition;
	information							=	PC_Circle_Geo3_Info;
	permanent							=	true;
	description							=	NAME_SPL_Geo3;
};
FUNC INT PC_Circle_Geo3_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Geo)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 3)
	{	return true;	};
};
FUNC VOID PC_Circle_Geo3_Info()
{
	CreateInvItem (hero, ItRu_Geo3);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Geo4 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_Circle_Geo4_Condition;
	information							=	PC_Circle_Geo4_Info;
	permanent							=	true;
	description							=	NAME_SPL_Geo4;
};
FUNC INT PC_Circle_Geo4_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Geo)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 4)
	{	return true;	};
};
FUNC VOID PC_Circle_Geo4_Info()
{
	CreateInvItem (hero, ItRu_Geo4);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Geo5 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_Circle_Geo5_Condition;
	information							=	PC_Circle_Geo5_Info;
	permanent							=	true;
	description							=	NAME_SPL_Geo5;
};
FUNC INT PC_Circle_Geo5_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Geo)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 5)
	{	return true;	};
};
FUNC VOID PC_Circle_Geo5_Info()
{
	CreateInvItem (hero, ItRu_Geo5);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};

//******************************************************************************************
INSTANCE PC_Circle_Ele1 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Circle_Ele1_Condition;
	information							=	PC_Circle_Ele1_Info;
	permanent							=	true;
	description							=	NAME_SPL_Ele1;
};
FUNC INT PC_Circle_Ele1_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Ele)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 1)
	{	return true;	};
};
FUNC VOID PC_Circle_Ele1_Info()
{
	CreateInvItem (hero, ItRu_Ele1);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Ele2 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Circle_Ele2_Condition;
	information							=	PC_Circle_Ele2_Info;
	permanent							=	true;
	description							=	NAME_SPL_Ele2;
};
FUNC INT PC_Circle_Ele2_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Ele)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 2)
	{	return true;	};
};
FUNC VOID PC_Circle_Ele2_Info()
{
	CreateInvItem (hero, ItRu_Ele2);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Ele3 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_Circle_Ele3_Condition;
	information							=	PC_Circle_Ele3_Info;
	permanent							=	true;
	description							=	NAME_SPL_Ele3;
};
FUNC INT PC_Circle_Ele3_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Ele)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 3)
	{	return true;	};
};
FUNC VOID PC_Circle_Ele3_Info()
{
	CreateInvItem (hero, ItRu_Ele3);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Ele4 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_Circle_Ele4_Condition;
	information							=	PC_Circle_Ele4_Info;
	permanent							=	true;
	description							=	NAME_SPL_Ele4;
};
FUNC INT PC_Circle_Ele4_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Ele)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 4)
	{	return true;	};
};
FUNC VOID PC_Circle_Ele4_Info()
{
	CreateInvItem (hero, ItRu_Ele4);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Ele5 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_Circle_Ele5_Condition;
	information							=	PC_Circle_Ele5_Info;
	permanent							=	true;
	description							=	NAME_SPL_Ele5;
};
FUNC INT PC_Circle_Ele5_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Ele)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 5)
	{	return true;	};
};
FUNC VOID PC_Circle_Ele5_Info()
{
	CreateInvItem (hero, ItRu_Ele5);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};

//******************************************************************************************
INSTANCE PC_Circle_Pyr1 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Circle_Pyr1_Condition;
	information							=	PC_Circle_Pyr1_Info;
	permanent							=	true;
	description							=	NAME_SPL_Pyr1;
};
FUNC INT PC_Circle_Pyr1_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Pyr)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 1)
	{	return true;	};
};
FUNC VOID PC_Circle_Pyr1_Info()
{
	CreateInvItem (hero, ItRu_Pyr1);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Pyr2 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Circle_Pyr2_Condition;
	information							=	PC_Circle_Pyr2_Info;
	permanent							=	true;
	description							=	NAME_SPL_Pyr2;
};
FUNC INT PC_Circle_Pyr2_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Pyr)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 2)
	{	return true;	};
};
FUNC VOID PC_Circle_Pyr2_Info()
{
	CreateInvItem (hero, ItRu_Pyr2);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Pyr3 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_Circle_Pyr3_Condition;
	information							=	PC_Circle_Pyr3_Info;
	permanent							=	true;
	description							=	NAME_SPL_Pyr3;
};
FUNC INT PC_Circle_Pyr3_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Pyr)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 3)
	{	return true;	};
};
FUNC VOID PC_Circle_Pyr3_Info()
{
	CreateInvItem (hero, ItRu_Pyr3);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Pyr4 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_Circle_Pyr4_Condition;
	information							=	PC_Circle_Pyr4_Info;
	permanent							=	true;
	description							=	NAME_SPL_Pyr4;
};
FUNC INT PC_Circle_Pyr4_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Pyr)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 4)
	{	return true;	};
};
FUNC VOID PC_Circle_Pyr4_Info()
{
	CreateInvItem (hero, ItRu_Pyr4);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Pyr5 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_Circle_Pyr5_Condition;
	information							=	PC_Circle_Pyr5_Info;
	permanent							=	true;
	description							=	NAME_SPL_Pyr5;
};
FUNC INT PC_Circle_Pyr5_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Pyr)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 5)
	{	return true;	};
};
FUNC VOID PC_Circle_Pyr5_Info()
{
	CreateInvItem (hero, ItRu_Pyr5);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};

//******************************************************************************************
INSTANCE PC_Circle_Nec1 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Circle_Nec1_Condition;
	information							=	PC_Circle_Nec1_Info;
	permanent							=	true;
	description							=	NAME_SPL_Nec1;
};
FUNC INT PC_Circle_Nec1_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Nec)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 1)
	{	return true;	};
};
FUNC VOID PC_Circle_Nec1_Info()
{
	CreateInvItem (hero, ItRu_Nec1);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Nec2 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Circle_Nec2_Condition;
	information							=	PC_Circle_Nec2_Info;
	permanent							=	true;
	description							=	NAME_SPL_Nec2;
};
FUNC INT PC_Circle_Nec2_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Nec)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 2)
	{	return true;	};
};
FUNC VOID PC_Circle_Nec2_Info()
{
	CreateInvItem (hero, ItRu_Nec2);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Nec3 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_Circle_Nec3_Condition;
	information							=	PC_Circle_Nec3_Info;
	permanent							=	true;
	description							=	NAME_SPL_Nec3;
};
FUNC INT PC_Circle_Nec3_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Nec)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 3)
	{	return true;	};
};
FUNC VOID PC_Circle_Nec3_Info()
{
	CreateInvItem (hero, ItRu_Nec3);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Nec4 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_Circle_Nec4_Condition;
	information							=	PC_Circle_Nec4_Info;
	permanent							=	true;
	description							=	NAME_SPL_Nec4;
};
FUNC INT PC_Circle_Nec4_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Nec)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 4)
	{	return true;	};
};
FUNC VOID PC_Circle_Nec4_Info()
{
	CreateInvItem (hero, ItRu_Nec4);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Nec5 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_Circle_Nec5_Condition;
	information							=	PC_Circle_Nec5_Info;
	permanent							=	true;
	description							=	NAME_SPL_Nec5;
};
FUNC INT PC_Circle_Nec5_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Nec)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 5)
	{	return true;	};
};
FUNC VOID PC_Circle_Nec5_Info()
{
	CreateInvItem (hero, ItRu_Nec5);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};

//******************************************************************************************
INSTANCE PC_Circle_Lum1 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Circle_Lum1_Condition;
	information							=	PC_Circle_Lum1_Info;
	permanent							=	true;
	description							=	NAME_SPL_Lum1;
};
FUNC INT PC_Circle_Lum1_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Lum)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 1)
	{	return true;	};
};
FUNC VOID PC_Circle_Lum1_Info()
{
	CreateInvItem (hero, ItRu_Lum1);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Lum2 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Circle_Lum2_Condition;
	information							=	PC_Circle_Lum2_Info;
	permanent							=	true;
	description							=	NAME_SPL_Lum2;
};
FUNC INT PC_Circle_Lum2_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Lum)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 2)
	{	return true;	};
};
FUNC VOID PC_Circle_Lum2_Info()
{
	CreateInvItem (hero, ItRu_Lum2);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Lum3 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_Circle_Lum3_Condition;
	information							=	PC_Circle_Lum3_Info;
	permanent							=	true;
	description							=	NAME_SPL_Lum3;
};
FUNC INT PC_Circle_Lum3_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Lum)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 3)
	{	return true;	};
};
FUNC VOID PC_Circle_Lum3_Info()
{
	CreateInvItem (hero, ItRu_Lum3);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Lum4 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_Circle_Lum4_Condition;
	information							=	PC_Circle_Lum4_Info;
	permanent							=	true;
	description							=	NAME_SPL_Lum4;
};
FUNC INT PC_Circle_Lum4_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Lum)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 4)
	{	return true;	};
};
FUNC VOID PC_Circle_Lum4_Info()
{
	CreateInvItem (hero, ItRu_Lum4);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
INSTANCE PC_Circle_Lum5 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_Circle_Lum5_Condition;
	information							=	PC_Circle_Lum5_Info;
	permanent							=	true;
	description							=	NAME_SPL_Lum5;
};
FUNC INT PC_Circle_Lum5_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_TYPEOFMAGIC) == MAGIC_Lum)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_MAGIC) >= 5)
	{	return true;	};
};
FUNC VOID PC_Circle_Lum5_Info()
{
	CreateInvItem (hero, ItRu_Lum5);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};

//******************************************************************************************
INSTANCE PC_Circle_Other (C_Info)
{
	npc									=	PC_Hero;
	nr									=	6;
	condition							=	PC_Circle_Other_Condition;
	information							=	PC_Circle_Other_Info;
	permanent							=	true;
	description							=	"Pozosta³e zaklêcia";
};

FUNC INT PC_Circle_Other_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& ((hero.guild == GIL_KDF) || (hero.guild == GIL_PAL))
	{	return true;	};
};

var int PalSpell_Heal;
var int PalSpell_Bolt;

FUNC VOID PC_Circle_Other_Info()
{
	Info_ClearChoices(PC_Circle_Other);

	Info_AddChoice (PC_Circle_Other, DIALOG_BACK, PC_Circle_Other_BACK);

	if (PlayerGetsAmulettOfDeath == true)
	{
		Info_AddChoice (PC_Circle_Other, NAME_SPL_PalHolyBolt, PC_ItRu_HolyBolt_Info);
	};
	if ((hero.guild == GIL_PAL) && (PalSpell_Bolt == true))
	{
		Info_AddChoice (PC_Circle_Other, NAME_SPL_PalBolt, PC_ItRu_PalBolt_Info);
	};
	if ((hero.guild == GIL_PAL) && (PalSpell_Heal == true))
	|| (hero.guild == GIL_KDF)
	{
		Info_AddChoice (PC_Circle_Other, NAME_SPL_Heal, PC_ItRu_Heal_Info);
	};
	Info_AddChoice (PC_Circle_Other, NAME_SPL_Light, PC_ItRu_Light_Info);
};
FUNC VOID PC_Circle_Other_BACK()
{	Info_ClearChoices(PC_Circle_Other);	};

//******************************************************************************************
INSTANCE PC_SPL_TeleportSecret (C_Info)
{
	npc									=	PC_Hero;
	nr									=	9;
	condition							=	PC_SPL_TeleportSecret_Condition;
	information							=	PC_SPL_TeleportSecret_Info;
	permanent							=	true;
	description							=	"Twórz runê teleportacyjn¹";
};

FUNC INT PC_SPL_TeleportSecret_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (PAL_KnowsAbout_FINAL_BLESSING == true)
	&& (PLAYER_TALENT_SPELLS[SPL_TeleportSecret] == false)
	{	return true;	};
};

FUNC VOID PC_SPL_TeleportSecret_Info()
{
	PLAYER_TALENT_SPELLS[SPL_TeleportSecret] == true;

	CreateInvItem (hero, ItRu_TeleportSecret);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
//******************************************************************************************
FUNC VOID PC_ItRu_Light_Info()
{
	CreateInvItem (hero, ItRu_Light);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};

FUNC VOID PC_ItRu_Heal_Info()
{
	CreateInvItem (hero, ItRu_Heal);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};

FUNC VOID PC_ItRu_PalBolt_Info()
{
	CreateInvItem (hero, ItRu_PalBolt);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
FUNC VOID PC_ItRu_HolyBolt_Info()
{
	CreateInvItem (hero, ItRu_HolyBolt);
	Print(PRINT_RuneSuccess);
	B_ENDPRODUCTIONDIALOG();
};
*/
