///******************************************************************************************
///	MOD_iMonologue
///******************************************************************************************
func void MOBSI_iMonologue_S1()
{
	if (C_BodyStateContains(hero, BS_STAND))
	{
		hero.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_iMonologue;
		AI_ProcessInfos(hero);
		
		AI_PlayAni (hero, "T_INNOS_STAND_2_S0");
		AI_PlayAni (hero, "T_INNOS_S0_2_S1");
	};
};

///******************************************************************************************
func int PC_iMonologue_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_iMonologue)
	{
		return true;
	};
};

instance PC_iMonologue_EXIT (C_INFO)
{
	npc         						=	PC_Hero;
	nr          						=	999;
	condition   						=	PC_iMonologue_Condition;
	information							=	PC_iMonologue_EXIT_Info;
	permanent   						=	true;
	description							=	DIALOG_ENDE;
};

func void PC_iMonologue_EXIT_Info()
{
	AI_PlayAni (hero, "T_INNOS_S1_2_S0");
	AI_PlayAni (hero, "T_INNOS_S0_2_STAND");
	B_ENDPRODUCTIONDIALOG();
};

///******************************************************************************************
instance PC_iMonologue_TEACH_STR (C_INFO)
{
	npc		 							=	PC_Hero;
	nr         							=	1;
	condition							=	PC_iMonologue_Condition;
	information							=	PC_iMonologue_TEACH_STR_Info;
	permanent							=	true;
	description							=	"Wzrost si³y";
};

func void PC_iMonologue_TEACH_STR_Info()
{
	Info_ClearChoices(PC_iMonologue_TEACH_STR);

	Info_AddChoice (PC_iMonologue_TEACH_STR, DIALOG_BACK, PC_iMonologue_TEACH_STR_BACK);
	Info_AddChoice (PC_iMonologue_TEACH_STR, B_BuildLearnString(PRINT_LearnSTR20, B_GetLearnCostAttribute(hero, ATR_STRENGTH)*20), PC_iMonologue_TEACH_STR_20);
	Info_AddChoice (PC_iMonologue_TEACH_STR, B_BuildLearnString(PRINT_LearnSTR10, B_GetLearnCostAttribute(hero, ATR_STRENGTH)*10), PC_iMonologue_TEACH_STR_10);
	Info_AddChoice (PC_iMonologue_TEACH_STR, B_BuildLearnString(PRINT_LearnSTR5, B_GetLearnCostAttribute(hero, ATR_STRENGTH)*5), PC_iMonologue_TEACH_STR_5);
	Info_AddChoice (PC_iMonologue_TEACH_STR, B_BuildLearnString(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH)*1), PC_iMonologue_TEACH_STR_1);
};

///******************************************************************************************
instance PC_iMonologue_TEACH_DEX (C_INFO)
{
	npc		 							=	PC_Hero;
	nr         							=	2;
	condition							=	PC_iMonologue_Condition;
	information							=	PC_iMonologue_TEACH_DEX_Info;
	permanent							=	true;
	description							=	"Wzrost zrêcznoœci";
};

func void PC_iMonologue_TEACH_DEX_Info()
{
	Info_ClearChoices(PC_iMonologue_TEACH_DEX);

	Info_AddChoice (PC_iMonologue_TEACH_DEX, DIALOG_BACK, PC_iMonologue_TEACH_DEX_BACK);
	Info_AddChoice (PC_iMonologue_TEACH_DEX, B_BuildLearnString(PRINT_LearnDEX20, B_GetLearnCostAttribute(hero, ATR_DEXTERITY)*20), PC_iMonologue_TEACH_DEX_20);
	Info_AddChoice (PC_iMonologue_TEACH_DEX, B_BuildLearnString(PRINT_LearnDEX10, B_GetLearnCostAttribute(hero, ATR_DEXTERITY)*10), PC_iMonologue_TEACH_DEX_10);
	Info_AddChoice (PC_iMonologue_TEACH_DEX, B_BuildLearnString(PRINT_LearnDEX5, B_GetLearnCostAttribute(hero, ATR_DEXTERITY)*5), PC_iMonologue_TEACH_DEX_5);
	Info_AddChoice (PC_iMonologue_TEACH_DEX, B_BuildLearnString(PRINT_LearnDEX1, B_GetLearnCostAttribute(hero, ATR_DEXTERITY)*1), PC_iMonologue_TEACH_DEX_1);
};

///******************************************************************************************
instance PC_iMonologue_TEACH_Power (C_INFO)
{
	npc		 							=	PC_Hero;
	nr         							=	3;
	condition							=	PC_iMonologue_Condition;
	information							=	PC_iMonologue_TEACH_Power_Info;
	permanent							=	true;
	description							=	"Wzrost mocy";
};

func void PC_iMonologue_TEACH_Power_Info()
{
	Info_ClearChoices(PC_iMonologue_TEACH_Power);

	Info_AddChoice (PC_iMonologue_TEACH_Power, DIALOG_BACK, PC_iMonologue_TEACH_Power_BACK);
	Info_AddChoice (PC_iMonologue_TEACH_Power, B_BuildLearnString(PRINT_LearnPower20, B_GetLearnCostAttribute(hero, ATR_POWER)*20), PC_iMonologue_TEACH_Power_20);
	Info_AddChoice (PC_iMonologue_TEACH_Power, B_BuildLearnString(PRINT_LearnPower10, B_GetLearnCostAttribute(hero, ATR_POWER)*10), PC_iMonologue_TEACH_Power_10);
	Info_AddChoice (PC_iMonologue_TEACH_Power, B_BuildLearnString(PRINT_LearnPower5, B_GetLearnCostAttribute(hero, ATR_POWER)*5), PC_iMonologue_TEACH_Power_5);
	Info_AddChoice (PC_iMonologue_TEACH_Power, B_BuildLearnString(PRINT_LearnPower1, B_GetLearnCostAttribute(hero, ATR_POWER)*1), PC_iMonologue_TEACH_Power_1);
};

///******************************************************************************************
instance PC_iMonologue_TEACH_MP (C_INFO)
{
	npc		 							=	PC_Hero;
	nr         							=	4;
	condition							=	PC_iMonologue_Condition;
	information							=	PC_iMonologue_TEACH_MP_Info;
	permanent							=	true;
	description							=	"Wzrost many";
};

func void PC_iMonologue_TEACH_MP_Info()
{
	Info_ClearChoices(PC_iMonologue_TEACH_MP);

	Info_AddChoice (PC_iMonologue_TEACH_MP, DIALOG_BACK, PC_iMonologue_TEACH_MP_BACK);
	Info_AddChoice (PC_iMonologue_TEACH_MP, B_BuildLearnString(PRINT_LearnMP20, B_GetLearnCostAttribute(hero, ATR_MANA_MAX)*20), PC_iMonologue_TEACH_MP_20);
	Info_AddChoice (PC_iMonologue_TEACH_MP, B_BuildLearnString(PRINT_LearnMP10, B_GetLearnCostAttribute(hero, ATR_MANA_MAX)*10), PC_iMonologue_TEACH_MP_10);
	Info_AddChoice (PC_iMonologue_TEACH_MP, B_BuildLearnString(PRINT_LearnMP5, B_GetLearnCostAttribute(hero, ATR_MANA_MAX)*5), PC_iMonologue_TEACH_MP_5);
	Info_AddChoice (PC_iMonologue_TEACH_MP, B_BuildLearnString(PRINT_LearnMP1, B_GetLearnCostAttribute(hero, ATR_MANA_MAX)*1), PC_iMonologue_TEACH_MP_1);
};

///******************************************************************************************
instance PC_iMonologue_TEACH_HP (C_INFO)
{
	npc		 							=	PC_Hero;
	nr         							=	5;
	condition							=	PC_iMonologue_Condition;
	information							=	PC_iMonologue_TEACH_HP_Info;
	permanent							=	true;
	description							=	"Wzrost punktów ¿ycia";
};

func void PC_iMonologue_TEACH_HP_Info()
{
	Info_ClearChoices(PC_iMonologue_TEACH_HP);

	Info_AddChoice (PC_iMonologue_TEACH_HP, DIALOG_BACK, PC_iMonologue_TEACH_HP_BACK);
	Info_AddChoice (PC_iMonologue_TEACH_HP, B_BuildLearnString(PRINT_LearnHP20, B_GetLearnCostAttribute(hero, ATR_HITPOINTS_MAX)*20), PC_iMonologue_TEACH_HP_20);
	Info_AddChoice (PC_iMonologue_TEACH_HP, B_BuildLearnString(PRINT_LearnHP10, B_GetLearnCostAttribute(hero, ATR_HITPOINTS_MAX)*10), PC_iMonologue_TEACH_HP_10);
	Info_AddChoice (PC_iMonologue_TEACH_HP, B_BuildLearnString(PRINT_LearnHP5, B_GetLearnCostAttribute(hero, ATR_HITPOINTS_MAX)*5), PC_iMonologue_TEACH_HP_5);
	Info_AddChoice (PC_iMonologue_TEACH_HP, B_BuildLearnString(PRINT_LearnHP1, B_GetLearnCostAttribute(hero, ATR_HITPOINTS_MAX)*1), PC_iMonologue_TEACH_HP_1);
};

///******************************************************************************************
FUNC VOID PC_iMonologue_TEACH_STR_BACK()
{
	Info_ClearChoices(PC_iMonologue_TEACH_STR);
};
FUNC VOID PC_iMonologue_TEACH_STR_1()
{
	if (B_TeachAttributePoints(hero, hero, ATR_STRENGTH, 1))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_STR_Info();
};
FUNC VOID PC_iMonologue_TEACH_STR_5()
{
	if (B_TeachAttributePoints(hero, hero, ATR_STRENGTH, 5))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_STR_Info();
};
FUNC VOID PC_iMonologue_TEACH_STR_10()
{
	if (B_TeachAttributePoints(hero, hero, ATR_STRENGTH, 10))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_STR_Info();
};
FUNC VOID PC_iMonologue_TEACH_STR_20()
{
	if (B_TeachAttributePoints(hero, hero, ATR_STRENGTH, 20))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_STR_Info();
};

///******************************************************************************************
FUNC VOID PC_iMonologue_TEACH_DEX_BACK()
{
	Info_ClearChoices(PC_iMonologue_TEACH_DEX);
};
func void PC_iMonologue_TEACH_DEX_1()
{
	if (B_TeachAttributePoints(hero, hero, ATR_DEXTERITY, 1))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_DEX_Info();
};
func void PC_iMonologue_TEACH_DEX_5()
{
	if (B_TeachAttributePoints(hero, hero, ATR_DEXTERITY, 5))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_DEX_Info();
};
func void PC_iMonologue_TEACH_DEX_10()
{
	if (B_TeachAttributePoints(hero, hero, ATR_DEXTERITY, 10))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_DEX_Info();
};
func void PC_iMonologue_TEACH_DEX_20()
{
	if (B_TeachAttributePoints(hero, hero, ATR_DEXTERITY, 20))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_DEX_Info();
};

///******************************************************************************************
FUNC VOID PC_iMonologue_TEACH_Power_BACK()
{
	Info_ClearChoices(PC_iMonologue_TEACH_Power);
};
func void PC_iMonologue_TEACH_Power_1()
{
	if (B_TeachAttributePoints(hero, hero, ATR_POWER, 1))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_Power_Info();
};
func void PC_iMonologue_TEACH_Power_5()
{
	if (B_TeachAttributePoints(hero, hero, ATR_POWER, 5))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_Power_Info();
};
func void PC_iMonologue_TEACH_Power_10()
{
	if (B_TeachAttributePoints(hero, hero, ATR_POWER, 10))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_Power_Info();
};
func void PC_iMonologue_TEACH_Power_20()
{
	if (B_TeachAttributePoints(hero, hero, ATR_POWER, 20))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_Power_Info();
};

///******************************************************************************************
FUNC VOID PC_iMonologue_TEACH_MP_BACK()
{
	Info_ClearChoices(PC_iMonologue_TEACH_MP);
};
func void PC_iMonologue_TEACH_MP_1()
{
	if (B_TeachAttributePoints(hero, hero, ATR_MANA_MAX, 1))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_MP_Info();
};
func void PC_iMonologue_TEACH_MP_5()
{
	if (B_TeachAttributePoints(hero, hero, ATR_MANA_MAX, 5))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_MP_Info();
};
func void PC_iMonologue_TEACH_MP_10()
{
	if (B_TeachAttributePoints(hero, hero, ATR_MANA_MAX, 10))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_MP_Info();
};
func void PC_iMonologue_TEACH_MP_20()
{
	if (B_TeachAttributePoints(hero, hero, ATR_MANA_MAX, 20))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_MP_Info();
};

///******************************************************************************************
FUNC VOID PC_iMonologue_TEACH_HP_BACK()
{
	Info_ClearChoices(PC_iMonologue_TEACH_HP);
};
FUNC VOID PC_iMonologue_TEACH_HP_1()
{
	if (B_TeachAttributePoints(hero, hero, ATR_HITPOINTS_MAX, 1))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_HP_Info();
};
FUNC VOID PC_iMonologue_TEACH_HP_5()
{
	if (B_TeachAttributePoints(hero, hero, ATR_HITPOINTS_MAX, 5))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_HP_Info();
};
FUNC VOID PC_iMonologue_TEACH_HP_10()
{
	if (B_TeachAttributePoints(hero, hero, ATR_HITPOINTS_MAX, 10))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_HP_Info();
};
FUNC VOID PC_iMonologue_TEACH_HP_20()
{
	if (B_TeachAttributePoints(hero, hero, ATR_HITPOINTS_MAX, 20))
	{
		Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);
		Snd_Play("MFX_Heal_Cast");
	};
	PC_iMonologue_TEACH_HP_Info();
};
