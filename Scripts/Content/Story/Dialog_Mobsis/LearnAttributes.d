///******************************************************************************************
/// MOD_LearnAttributes
///******************************************************************************************
func void MOBSI_LearnAttributes_S1()
{
	//if (C_BodyStateContains(hero, BS_STAND) || C_BodyStateContains(hero, BS_ITEMINTERACT))
	//{
	//	hero.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_LearnAttributes;
		AI_ProcessInfos(hero);
		
		AI_PlayAni (hero, "T_INNOS_STAND_2_S0");
		AI_PlayAni (hero, "T_INNOS_S0_2_S1");
	//};
};
func void MOBSI_LearnAttributes_Effect(var int attrib)
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_PrayIdol)
	{
		Wld_PlayEffect ("spellFX_BELIARSRAGE", hero, hero, 0, 0, 0, false);
	}
	else
	{
		if		(attrib == ATR_HITPOINTS_MAX)	{	Wld_PlayEffect ("spellFX_LearnHP", hero, hero, 0, 0, 0, false);		}
		else if	(attrib == ATR_MANA_MAX)		{	Wld_PlayEffect ("spellFX_LearnMP", hero, hero, 0, 0, 0, false);		}
		else if	(attrib == AIV_STAMINA_MAX)		{	Wld_PlayEffect ("spellFX_LearnSP", hero, hero, 0, 0, 0, false);		}
		else if	(attrib == ATR_STRENGTH)		{	Wld_PlayEffect ("spellFX_LearnSTR", hero, hero, 0, 0, 0, false);	}
		else if	(attrib == ATR_DEXTERITY)		{	Wld_PlayEffect ("spellFX_LearnDEX", hero, hero, 0, 0, 0, false);	}
		else if	(attrib == ATR_POWER)			{	Wld_PlayEffect ("spellFX_LearnPOW", hero, hero, 0, 0, 0, false);	}
		else									{	Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);	};
	};
};
///******************************************************************************************
func int PC_LearnAttributes_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_LearnAttributes)
	|| (PLAYER_MOBSI_PRODUCTION == MOBSI_PrayShrine)
	|| (PLAYER_MOBSI_PRODUCTION == MOBSI_PrayIdol)
	{
		return true;
	};
};
instance PC_LearnAttributes_EXIT (C_INFO)
{
	npc         						=	PC_Hero;
	nr          						=	999;
	condition   						=	PC_LearnAttributes_EXIT_Condition;
	information							=	PC_LearnAttributes_EXIT_Info;
	permanent   						=	true;
	description							=	DIALOG_END;
};
func int PC_LearnAttributes_EXIT_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_LearnAttributes)
	{
		return true;
	};
};
func void PC_LearnAttributes_EXIT_Info()
{
	AI_PlayAni (hero, "T_INNOS_S1_2_S0");
	AI_PlayAni (hero, "T_INNOS_S0_2_STAND");
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
instance PC_LearnAttributes_TEACH_HP (C_Info)
{
	npc		 							=	PC_Hero;
	nr         							=	11;
	condition							=	PC_LearnAttributes_Condition;
	information							=	PC_LearnAttributes_TEACH_HP_Info;
	permanent							=	true;
	description							=	"Wzrost punktów ¿ycia";
};
func void PC_LearnAttributes_TEACH_HP_Info()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_HP);

	Info_AddChoice (PC_LearnAttributes_TEACH_HP, DIALOG_BACK, PC_LearnAttributes_TEACH_HP_BACK);
	Info_AddChoice (PC_LearnAttributes_TEACH_HP, B_BuildLearnString(ConcatStrings(PRINT_LearnHP, IntToString(20)), B_GetLearnCostAttribute(hero, ATR_HITPOINTS_MAX)*20, false), PC_LearnAttributes_TEACH_HP_20);
	Info_AddChoice (PC_LearnAttributes_TEACH_HP, B_BuildLearnString(ConcatStrings(PRINT_LearnHP, IntToString(10)), B_GetLearnCostAttribute(hero, ATR_HITPOINTS_MAX)*10, false), PC_LearnAttributes_TEACH_HP_10);
	Info_AddChoice (PC_LearnAttributes_TEACH_HP, B_BuildLearnString(ConcatStrings(PRINT_LearnHP, IntToString(5)), B_GetLearnCostAttribute(hero, ATR_HITPOINTS_MAX)*5, false), PC_LearnAttributes_TEACH_HP_5);
	Info_AddChoice (PC_LearnAttributes_TEACH_HP, B_BuildLearnString(ConcatStrings(PRINT_LearnHP, IntToString(1)), B_GetLearnCostAttribute(hero, ATR_HITPOINTS_MAX)*1, false), PC_LearnAttributes_TEACH_HP_1);
};
///******************************************************************************************
instance PC_LearnAttributes_TEACH_MP (C_Info)
{
	npc		 							=	PC_Hero;
	nr         							=	12;
	condition							=	PC_LearnAttributes_Condition;
	information							=	PC_LearnAttributes_TEACH_MP_Info;
	permanent							=	true;
	description							=	"Wzrost many";
};
func void PC_LearnAttributes_TEACH_MP_Info()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_MP);

	Info_AddChoice (PC_LearnAttributes_TEACH_MP, DIALOG_BACK, PC_LearnAttributes_TEACH_MP_BACK);
	Info_AddChoice (PC_LearnAttributes_TEACH_MP, B_BuildLearnString(ConcatStrings(PRINT_LearnMP, IntToString(20)), B_GetLearnCostAttribute(hero, ATR_MANA_MAX)*20, false), PC_LearnAttributes_TEACH_MP_20);
	Info_AddChoice (PC_LearnAttributes_TEACH_MP, B_BuildLearnString(ConcatStrings(PRINT_LearnMP, IntToString(10)), B_GetLearnCostAttribute(hero, ATR_MANA_MAX)*10, false), PC_LearnAttributes_TEACH_MP_10);
	Info_AddChoice (PC_LearnAttributes_TEACH_MP, B_BuildLearnString(ConcatStrings(PRINT_LearnMP, IntToString(5)), B_GetLearnCostAttribute(hero, ATR_MANA_MAX)*5, false), PC_LearnAttributes_TEACH_MP_5);
	Info_AddChoice (PC_LearnAttributes_TEACH_MP, B_BuildLearnString(ConcatStrings(PRINT_LearnMP, IntToString(1)), B_GetLearnCostAttribute(hero, ATR_MANA_MAX)*1, false), PC_LearnAttributes_TEACH_MP_1);
};
/*
///******************************************************************************************
instance PC_LearnAttributes_TEACH_SP (C_Info)
{
	npc		 							=	PC_Hero;
	nr         							=	13;
	condition							=	PC_LearnAttributes_Condition;
	information							=	PC_LearnAttributes_TEACH_SP_Info;
	permanent							=	true;
	description							=	"Wzrost energii";
};
func void PC_LearnAttributes_TEACH_SP_Info()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_SP);

	Info_AddChoice (PC_LearnAttributes_TEACH_SP, DIALOG_BACK, PC_LearnAttributes_TEACH_SP_BACK);
	Info_AddChoice (PC_LearnAttributes_TEACH_SP, B_BuildLearnString(ConcatStrings(PRINT_LearnSP, IntToString(20)), B_GetLearnCostAttribute(hero, AIV_STAMINA_MAX)*20, false), PC_LearnAttributes_TEACH_SP_20);
	Info_AddChoice (PC_LearnAttributes_TEACH_SP, B_BuildLearnString(ConcatStrings(PRINT_LearnSP, IntToString(10)), B_GetLearnCostAttribute(hero, AIV_STAMINA_MAX)*10, false), PC_LearnAttributes_TEACH_SP_10);
	Info_AddChoice (PC_LearnAttributes_TEACH_SP, B_BuildLearnString(ConcatStrings(PRINT_LearnSP, IntToString(5)), B_GetLearnCostAttribute(hero, AIV_STAMINA_MAX)*5, false), PC_LearnAttributes_TEACH_SP_5);
	Info_AddChoice (PC_LearnAttributes_TEACH_SP, B_BuildLearnString(ConcatStrings(PRINT_LearnSP, IntToString(1)), B_GetLearnCostAttribute(hero, AIV_STAMINA_MAX)*1, false), PC_LearnAttributes_TEACH_SP_1);
};
*/
///******************************************************************************************
instance PC_LearnAttributes_TEACH_STR (C_Info)
{
	npc		 							=	PC_Hero;
	nr         							=	14;
	condition							=	PC_LearnAttributes_Condition;
	information							=	PC_LearnAttributes_TEACH_STR_Info;
	permanent							=	true;
	description							=	"Wzrost si³y";
};
func void PC_LearnAttributes_TEACH_STR_Info()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_STR);

	Info_AddChoice (PC_LearnAttributes_TEACH_STR, DIALOG_BACK, PC_LearnAttributes_TEACH_STR_BACK);
	Info_AddChoice (PC_LearnAttributes_TEACH_STR, B_BuildLearnString(ConcatStrings(PRINT_LearnSTR, IntToString(20)), B_GetLearnCostAttribute(hero, ATR_STRENGTH)*20, false), PC_LearnAttributes_TEACH_STR_20);
	Info_AddChoice (PC_LearnAttributes_TEACH_STR, B_BuildLearnString(ConcatStrings(PRINT_LearnSTR, IntToString(10)), B_GetLearnCostAttribute(hero, ATR_STRENGTH)*10, false), PC_LearnAttributes_TEACH_STR_10);
	Info_AddChoice (PC_LearnAttributes_TEACH_STR, B_BuildLearnString(ConcatStrings(PRINT_LearnSTR, IntToString(5)), B_GetLearnCostAttribute(hero, ATR_STRENGTH)*5, false), PC_LearnAttributes_TEACH_STR_5);
	Info_AddChoice (PC_LearnAttributes_TEACH_STR, B_BuildLearnString(ConcatStrings(PRINT_LearnSTR, IntToString(1)), B_GetLearnCostAttribute(hero, ATR_STRENGTH)*1, false), PC_LearnAttributes_TEACH_STR_1);
};
///******************************************************************************************
instance PC_LearnAttributes_TEACH_DEX (C_Info)
{
	npc		 							=	PC_Hero;
	nr         							=	15;
	condition							=	PC_LearnAttributes_Condition;
	information							=	PC_LearnAttributes_TEACH_DEX_Info;
	permanent							=	true;
	description							=	"Wzrost zrêcznoœci";
};
func void PC_LearnAttributes_TEACH_DEX_Info()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_DEX);

	Info_AddChoice (PC_LearnAttributes_TEACH_DEX, DIALOG_BACK, PC_LearnAttributes_TEACH_DEX_BACK);
	Info_AddChoice (PC_LearnAttributes_TEACH_DEX, B_BuildLearnString(ConcatStrings(PRINT_LearnDEX, IntToString(20)), B_GetLearnCostAttribute(hero, ATR_DEXTERITY)*20, false), PC_LearnAttributes_TEACH_DEX_20);
	Info_AddChoice (PC_LearnAttributes_TEACH_DEX, B_BuildLearnString(ConcatStrings(PRINT_LearnDEX, IntToString(10)), B_GetLearnCostAttribute(hero, ATR_DEXTERITY)*10, false), PC_LearnAttributes_TEACH_DEX_10);
	Info_AddChoice (PC_LearnAttributes_TEACH_DEX, B_BuildLearnString(ConcatStrings(PRINT_LearnDEX, IntToString(5)), B_GetLearnCostAttribute(hero, ATR_DEXTERITY)*5, false), PC_LearnAttributes_TEACH_DEX_5);
	Info_AddChoice (PC_LearnAttributes_TEACH_DEX, B_BuildLearnString(ConcatStrings(PRINT_LearnDEX, IntToString(1)), B_GetLearnCostAttribute(hero, ATR_DEXTERITY)*1, false), PC_LearnAttributes_TEACH_DEX_1);
};
///******************************************************************************************
instance PC_LearnAttributes_TEACH_POW (C_Info)
{
	npc		 							=	PC_Hero;
	nr         							=	16;
	condition							=	PC_LearnAttributes_Condition;
	information							=	PC_LearnAttributes_TEACH_POW_Info;
	permanent							=	true;
	description							=	"Wzrost mocy";
};
func void PC_LearnAttributes_TEACH_POW_Info()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_POW);

	Info_AddChoice (PC_LearnAttributes_TEACH_POW, DIALOG_BACK, PC_LearnAttributes_TEACH_POW_BACK);
	Info_AddChoice (PC_LearnAttributes_TEACH_POW, B_BuildLearnString(ConcatStrings(PRINT_LearnPOW, IntToString(20)), B_GetLearnCostAttribute(hero, ATR_POWER)*20, false), PC_LearnAttributes_TEACH_POW_20);
	Info_AddChoice (PC_LearnAttributes_TEACH_POW, B_BuildLearnString(ConcatStrings(PRINT_LearnPOW, IntToString(10)), B_GetLearnCostAttribute(hero, ATR_POWER)*10, false), PC_LearnAttributes_TEACH_POW_10);
	Info_AddChoice (PC_LearnAttributes_TEACH_POW, B_BuildLearnString(ConcatStrings(PRINT_LearnPOW, IntToString(5)), B_GetLearnCostAttribute(hero, ATR_POWER)*5, false), PC_LearnAttributes_TEACH_POW_5);
	Info_AddChoice (PC_LearnAttributes_TEACH_POW, B_BuildLearnString(ConcatStrings(PRINT_LearnPOW, IntToString(1)), B_GetLearnCostAttribute(hero, ATR_POWER)*1, false), PC_LearnAttributes_TEACH_POW_1);
};
///******************************************************************************************
func void PC_LearnAttributes_TEACH_HP_BACK()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_HP);
};
func void PC_LearnAttributes_TEACH_HP_1()
{
	if (B_TeachAttribute(hero, hero, ATR_HITPOINTS_MAX, 1))	{ MOBSI_LearnAttributes_Effect(ATR_HITPOINTS_MAX); };
	PC_LearnAttributes_TEACH_HP_Info();
};
func void PC_LearnAttributes_TEACH_HP_5()
{
	if (B_TeachAttribute(hero, hero, ATR_HITPOINTS_MAX, 5))	{ MOBSI_LearnAttributes_Effect(ATR_HITPOINTS_MAX); };
	PC_LearnAttributes_TEACH_HP_Info();
};
func void PC_LearnAttributes_TEACH_HP_10()
{
	if (B_TeachAttribute(hero, hero, ATR_HITPOINTS_MAX, 10))	{ MOBSI_LearnAttributes_Effect(ATR_HITPOINTS_MAX); };
	PC_LearnAttributes_TEACH_HP_Info();
};
func void PC_LearnAttributes_TEACH_HP_20()
{
	if (B_TeachAttribute(hero, hero, ATR_HITPOINTS_MAX, 20))	{ MOBSI_LearnAttributes_Effect(ATR_HITPOINTS_MAX); };
	PC_LearnAttributes_TEACH_HP_Info();
};
///******************************************************************************************
func void PC_LearnAttributes_TEACH_MP_BACK()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_MP);
};
func void PC_LearnAttributes_TEACH_MP_1()
{
	if (B_TeachAttribute(hero, hero, ATR_MANA_MAX, 1))		{ MOBSI_LearnAttributes_Effect(ATR_MANA_MAX); };
	PC_LearnAttributes_TEACH_MP_Info();
};
func void PC_LearnAttributes_TEACH_MP_5()
{
	if (B_TeachAttribute(hero, hero, ATR_MANA_MAX, 5))		{ MOBSI_LearnAttributes_Effect(ATR_MANA_MAX); };
	PC_LearnAttributes_TEACH_MP_Info();
};
func void PC_LearnAttributes_TEACH_MP_10()
{
	if (B_TeachAttribute(hero, hero, ATR_MANA_MAX, 10))		{ MOBSI_LearnAttributes_Effect(ATR_MANA_MAX); };
	PC_LearnAttributes_TEACH_MP_Info();
};
func void PC_LearnAttributes_TEACH_MP_20()
{
	if (B_TeachAttribute(hero, hero, ATR_MANA_MAX, 20))		{ MOBSI_LearnAttributes_Effect(ATR_MANA_MAX); };
	PC_LearnAttributes_TEACH_MP_Info();
};
/*
///******************************************************************************************
func void PC_LearnAttributes_TEACH_SP_BACK()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_SP);
};
func void PC_LearnAttributes_TEACH_SP_1()
{
	if (B_TeachAttribute(hero, hero, AIV_STAMINA_MAX, 1))		{ MOBSI_LearnAttributes_Effect(AIV_STAMINA_MAX); };
	PC_LearnAttributes_TEACH_SP_Info();
};
func void PC_LearnAttributes_TEACH_SP_5()
{
	if (B_TeachAttribute(hero, hero, AIV_STAMINA_MAX, 5))		{ MOBSI_LearnAttributes_Effect(AIV_STAMINA_MAX); };
	PC_LearnAttributes_TEACH_SP_Info();
};
func void PC_LearnAttributes_TEACH_SP_10()
{
	if (B_TeachAttribute(hero, hero, AIV_STAMINA_MAX, 10))	{ MOBSI_LearnAttributes_Effect(AIV_STAMINA_MAX); };
	PC_LearnAttributes_TEACH_SP_Info();
};
func void PC_LearnAttributes_TEACH_SP_20()
{
	if (B_TeachAttribute(hero, hero, AIV_STAMINA_MAX, 20))	{ MOBSI_LearnAttributes_Effect(AIV_STAMINA_MAX); };
	PC_LearnAttributes_TEACH_SP_Info();
};
*/
///******************************************************************************************
func void PC_LearnAttributes_TEACH_STR_BACK()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_STR);
};
func void PC_LearnAttributes_TEACH_STR_1()
{
	if (B_TeachAttribute(hero, hero, ATR_STRENGTH, 1))		{ MOBSI_LearnAttributes_Effect(ATR_STRENGTH); };
	PC_LearnAttributes_TEACH_STR_Info();
};
func void PC_LearnAttributes_TEACH_STR_5()
{
	if (B_TeachAttribute(hero, hero, ATR_STRENGTH, 5))		{ MOBSI_LearnAttributes_Effect(ATR_STRENGTH); };
	PC_LearnAttributes_TEACH_STR_Info();
};
func void PC_LearnAttributes_TEACH_STR_10()
{
	if (B_TeachAttribute(hero, hero, ATR_STRENGTH, 10))		{ MOBSI_LearnAttributes_Effect(ATR_STRENGTH); };
	PC_LearnAttributes_TEACH_STR_Info();
};
func void PC_LearnAttributes_TEACH_STR_20()
{
	if (B_TeachAttribute(hero, hero, ATR_STRENGTH, 20))		{ MOBSI_LearnAttributes_Effect(ATR_STRENGTH); };
	PC_LearnAttributes_TEACH_STR_Info();
};
///******************************************************************************************
func void PC_LearnAttributes_TEACH_DEX_BACK()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_DEX);
};
func void PC_LearnAttributes_TEACH_DEX_1()
{
	if (B_TeachAttribute(hero, hero, ATR_DEXTERITY, 1))		{ MOBSI_LearnAttributes_Effect(ATR_DEXTERITY); };
	PC_LearnAttributes_TEACH_DEX_Info();
};
func void PC_LearnAttributes_TEACH_DEX_5()
{
	if (B_TeachAttribute(hero, hero, ATR_DEXTERITY, 5))		{ MOBSI_LearnAttributes_Effect(ATR_DEXTERITY); };
	PC_LearnAttributes_TEACH_DEX_Info();
};
func void PC_LearnAttributes_TEACH_DEX_10()
{
	if (B_TeachAttribute(hero, hero, ATR_DEXTERITY, 10))		{ MOBSI_LearnAttributes_Effect(ATR_DEXTERITY); };
	PC_LearnAttributes_TEACH_DEX_Info();
};
func void PC_LearnAttributes_TEACH_DEX_20()
{
	if (B_TeachAttribute(hero, hero, ATR_DEXTERITY, 20))		{ MOBSI_LearnAttributes_Effect(ATR_DEXTERITY); };
	PC_LearnAttributes_TEACH_DEX_Info();
};
///******************************************************************************************
func void PC_LearnAttributes_TEACH_POW_BACK()
{
	Info_ClearChoices(PC_LearnAttributes_TEACH_POW);
};
func void PC_LearnAttributes_TEACH_POW_1()
{
	if (B_TeachAttribute(hero, hero, ATR_POWER, 1))			{ MOBSI_LearnAttributes_Effect(ATR_POWER); };
	PC_LearnAttributes_TEACH_POW_Info();
};
func void PC_LearnAttributes_TEACH_POW_5()
{
	if (B_TeachAttribute(hero, hero, ATR_POWER, 5))			{ MOBSI_LearnAttributes_Effect(ATR_POWER); };
	PC_LearnAttributes_TEACH_POW_Info();
};
func void PC_LearnAttributes_TEACH_POW_10()
{
	if (B_TeachAttribute(hero, hero, ATR_POWER, 10))			{ MOBSI_LearnAttributes_Effect(ATR_POWER); };
	PC_LearnAttributes_TEACH_POW_Info();
};
func void PC_LearnAttributes_TEACH_POW_20()
{
	if (B_TeachAttribute(hero, hero, ATR_POWER, 20))			{ MOBSI_LearnAttributes_Effect(ATR_POWER); };
	PC_LearnAttributes_TEACH_POW_Info();
};
