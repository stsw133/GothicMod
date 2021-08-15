///******************************************************************************************
instance SC (NPC_DEFAULT)
{
	/// ------ General ------
	name								=	"Kreator Umiejêtnoœci";
	guild								=	GIL_NONE;
	id									=	51;
	voice								=	15;
	flags								=	NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Aivars ------
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_FollowDist]				=	300;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, MAX_LEVEL);
	B_SetFightSkills (self, 100);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Player, BodySkin_N, "Hum_Head_Bald", Face_Player, Teeth_Normal, -1);
	Mdl_SetModelFatness	(self, 0);

	/// ------ Rtn ------
	daily_routine						=	Rtn_start_51;
};
func void Rtn_Start_51()
{
	TA_Stand_ArmsCrossed (08,00,23,00, "XXX");
	TA_Stand_ArmsCrossed (23,00,08,00, "XXX");
};

///******************************************************************************************
instance SC_Exit (C_INFO)
{
	npc									=	SC;
	nr									=	999;
	condition							=	atrue;
	information							=	SC_Exit_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void SC_Exit_Info()
{
	AI_StopProcessInfos(self);
};

///******************************************************************************************
instance SC_Gold (C_INFO)
{
	npc									=	SC;
	nr									=	1;
	condition							=	atrue;
	information							=	SC_Gold_Info;
	permanent							=	true;
	description							=	"Daj z³oto (10k)";
};
func void SC_Gold_Info()
{
	CreateInvItems (hero, ItMi_Gold, 10000);
	PrintScreen ("Otrzymano 10000 sztuk z³ota", -1, -1, FONT_Screen, 2);
};

///******************************************************************************************
instance DIA_SC_Attribute_Start (C_INFO)
{
	npc									=	SC;
	nr									=	2;
	condition							=	atrue;
	information							=	DIA_SC_Attribute_Start_Info;
	permanent							=	true;
	description							=	"Si³a, zrêcznoœæ, mana, punkty ¿ycia";
};

func void DIA_SC_Attribute_Start_Info()
{
	Info_ClearChoices(DIA_SC_Attribute_Start);

	Info_AddChoice (DIA_SC_Attribute_Start, DIALOG_BACK, DIA_SC_Attribute_BACK);
	Info_AddChoice (DIA_SC_Attribute_Start, "Wzrost punktów ¿ycia", DIA_SC_HP);
	Info_AddChoice (DIA_SC_Attribute_Start, "Wzrost many", DIA_SC_Mana);
	Info_AddChoice (DIA_SC_Attribute_Start, "Wzrost zrêcznoœci", DIA_SC_DEX);
	Info_AddChoice (DIA_SC_Attribute_Start, "Wzrost si³y", DIA_SC_STR);
};

func void DIA_SC_Attribute_BACK()
{
	Info_ClearChoices(DIA_SC_Attribute_Start);
};

///******************************************************************************************
func void DIA_SC_STR()
{
	Info_ClearChoices(DIA_SC_Attribute_Start);

	Info_AddChoice (DIA_SC_Attribute_Start, DIALOG_BACK, DIA_SC_Attribute_BACK);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnSTR20, B_GetLearnCostAttribute(other, ATR_STRENGTH) * 20), DIA_SC_STR_20);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnSTR10, B_GetLearnCostAttribute(other, ATR_STRENGTH) * 10), DIA_SC_STR_10);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnSTR5, B_GetLearnCostAttribute(other, ATR_STRENGTH) * 5), DIA_SC_STR_5);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnSTR1, B_GetLearnCostAttribute(other, ATR_STRENGTH) * 1), DIA_SC_STR_1);
};
///******************************************************************************************
func void DIA_SC_STR_1()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 1);
	DIA_SC_STR();
};
func void DIA_SC_STR_5()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 5);
	DIA_SC_STR();
};
func void DIA_SC_STR_10()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 10);
	DIA_SC_STR();
};
func void DIA_SC_STR_20()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 20);
	DIA_SC_STR();
};

///******************************************************************************************
func void DIA_SC_DEX()
{
	Info_ClearChoices(DIA_SC_Attribute_Start);

	Info_AddChoice (DIA_SC_Attribute_Start, DIALOG_BACK, DIA_SC_Attribute_BACK);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnDEX20, B_GetLearnCostAttribute(other, ATR_DEXTERITY) * 20), DIA_SC_DEX_20);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnDEX10, B_GetLearnCostAttribute(other, ATR_DEXTERITY) * 10), DIA_SC_DEX_10);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnDEX5, B_GetLearnCostAttribute(other, ATR_DEXTERITY) * 5), DIA_SC_DEX_5);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnDEX1, B_GetLearnCostAttribute(other, ATR_DEXTERITY) * 1), DIA_SC_DEX_1);
};
///******************************************************************************************
func void DIA_SC_DEX_1()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 1);
	DIA_SC_DEX();
};
func void DIA_SC_DEX_5()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 5);
	DIA_SC_DEX();
};
func void DIA_SC_DEX_10()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 10);
	DIA_SC_DEX();
};
func void DIA_SC_DEX_20()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 20);
	DIA_SC_DEX();
};

///******************************************************************************************
func void DIA_SC_Mana()
{
	Info_ClearChoices(DIA_SC_Attribute_Start);

	Info_AddChoice (DIA_SC_Attribute_Start, DIALOG_BACK, DIA_SC_Attribute_BACK);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnMP20, B_GetLearnCostAttribute(other, ATR_MANA_MAX) * 20), DIA_SC_Mana_20);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnMP10, B_GetLearnCostAttribute(other, ATR_MANA_MAX) * 10), DIA_SC_Mana_10);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnMP5, B_GetLearnCostAttribute(other, ATR_MANA_MAX) * 5), DIA_SC_Mana_5);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnMP1, B_GetLearnCostAttribute(other, ATR_MANA_MAX) * 1), DIA_SC_Mana_1);
};
///******************************************************************************************
func void DIA_SC_Mana_1()
{
	B_TeachAttributePoints (self, other, ATR_MANA_MAX, 1);
	DIA_SC_Mana();
};
func void DIA_SC_Mana_5()
{
	B_TeachAttributePoints (self, other, ATR_MANA_MAX, 5);
	DIA_SC_Mana();
};
func void DIA_SC_Mana_10()
{
	B_TeachAttributePoints (self, other, ATR_MANA_MAX, 10);
	DIA_SC_Mana();
};
func void DIA_SC_Mana_20()
{
	B_TeachAttributePoints (self, other, ATR_MANA_MAX, 20);
	DIA_SC_Mana();
};

///******************************************************************************************
func void DIA_SC_HP()
{
	Info_ClearChoices(DIA_SC_Attribute_Start);

	Info_AddChoice (DIA_SC_Attribute_Start, DIALOG_BACK, DIA_SC_Attribute_BACK);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnHP20, B_GetLearnCostAttribute(other, ATR_HITPOINTS_MAX) * 20), DIA_SC_HP_20);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnHP10, B_GetLearnCostAttribute(other, ATR_HITPOINTS_MAX) * 10), DIA_SC_HP_10);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnHP5, B_GetLearnCostAttribute(other, ATR_HITPOINTS_MAX) * 5), DIA_SC_HP_5);
	Info_AddChoice (DIA_SC_Attribute_Start, B_BuildLearnString(PRINT_LearnHP1, B_GetLearnCostAttribute(other, ATR_HITPOINTS_MAX) * 1), DIA_SC_HP_1);
};
///******************************************************************************************
func void DIA_SC_HP_1()
{
	B_TeachAttributePoints (self, other, ATR_HITPOINTS_MAX, 1);
	DIA_SC_HP();
};
func void DIA_SC_HP_5()
{
	B_TeachAttributePoints (self, other, ATR_HITPOINTS_MAX, 5);
	DIA_SC_HP();
};
func void DIA_SC_HP_10()
{
	B_TeachAttributePoints (self, other, ATR_HITPOINTS_MAX, 10);
	DIA_SC_HP();
};
func void DIA_SC_HP_20()
{
	B_TeachAttributePoints (self, other, ATR_HITPOINTS_MAX, 20);
	DIA_SC_HP();
};

///******************************************************************************************
instance DIA_SC_Fight_Start (C_INFO)
{
	npc									=	SC;
	nr									=	3;
	condition							=	atrue;
	information							=	DIA_SC_Fight_Start_Info;
	permanent							=	true;
	description							=	"Talenty bojowe";
};
func void DIA_SC_Fight_Start_Info()
{
	Info_ClearChoices(DIA_SC_Fight_Start);
	Info_AddChoice (DIA_SC_Fight_Start, DIALOG_BACK, DIA_SC_Fight_BACK);

	MOD_PrintLearn();
	if (Npc_GetTalentSkill(other,NPC_TALENT_CROSSBOW) < 4)
	{
		Info_AddChoice (DIA_SC_Fight_Start, B_BuildLearnString(PRINT_LearnFight_Crossbow, B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, Npc_GetTalentSkill(other, NPC_TALENT_CROSSBOW) + 1)), SC_Training_Combat_Crossbow);
	};
	if (Npc_GetTalentSkill(other,NPC_TALENT_BOW) < 4)
	{
		Info_AddChoice (DIA_SC_Fight_Start, B_BuildLearnString(PRINT_LearnFight_Bow, B_GetLearnCostTalent(other, NPC_TALENT_BOW, Npc_GetTalentSkill(other, NPC_TALENT_BOW) + 1)), SC_Training_Combat_Bow);
	};
	if (Npc_GetTalentSkill(other,NPC_TALENT_2H) < 4)
	{
		Info_AddChoice (DIA_SC_Fight_Start, B_BuildLearnString(PRINT_LearnFight_2h, B_GetLearnCostTalent(other, NPC_TALENT_2H, Npc_GetTalentSkill(other, NPC_TALENT_2H) + 1)), SC_Training_Combat_2h);
	};
	if (Npc_GetTalentSkill(other,NPC_TALENT_1H) < 4)
	{
		Info_AddChoice (DIA_SC_Fight_Start, B_BuildLearnString(PRINT_LearnFight_1h, B_GetLearnCostTalent(other, NPC_TALENT_1H, Npc_GetTalentSkill(other, NPC_TALENT_1H) + 1)), SC_Training_Combat_1h);
	};
};
///******************************************************************************************
func void DIA_SC_Fight_BACK()
{
	Info_ClearChoices(DIA_SC_Fight_Start);
};
func void SC_Training_Combat_1h()
{
	B_TeachTalent (self, other, NPC_TALENT_1H, Npc_GetTalentSkill(other, NPC_TALENT_1H) + 1);
	DIA_SC_Fight_Start_Info();
};
func void SC_Training_Combat_2h()
{
	B_TeachTalent (self, other, NPC_TALENT_2H, Npc_GetTalentSkill(other, NPC_TALENT_2H) + 1);
	DIA_SC_Fight_Start_Info();
};
func void SC_Training_Combat_Bow()
{
	B_TeachTalent (self, other, NPC_TALENT_BOW, Npc_GetTalentSkill(other, NPC_TALENT_BOW) + 1);
	DIA_SC_Fight_Start_Info();
};
func void SC_Training_Combat_Crossbow()
{
	B_TeachTalent (self, other, NPC_TALENT_CROSSBOW, Npc_GetTalentSkill(other, NPC_TALENT_CROSSBOW) + 1);
	DIA_SC_Fight_Start_Info();
};

///******************************************************************************************
instance DIA_SC_Thief_Start (C_INFO)
{
	npc									=	SC;
	nr									=	4;
	condition							=	atrue;
	information							=	DIA_SC_Thief_Start_Info;
	permanent							=	true;
	description							=	"Talenty z³odziejskie";
};
func void DIA_SC_Thief_Start_Info()
{
	Info_ClearChoices(DIA_SC_Thief_Start);
	Info_AddChoice (DIA_SC_Thief_Start, DIALOG_BACK, DIA_SC_Thief_BACK);

	if (Npc_GetTalentSkill(other, NPC_TALENT_PERSUASION) == 0)
	{
		Info_AddChoice (DIA_SC_Thief_Start, B_BuildLearnString(PRINT_LearnTalent_Persuasion, B_GetLearnCostTalent(other, NPC_TALENT_PERSUASION, 1)), SC_Training_Thief_Persuasion);
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_ACROBATIC) == 0)
	{
		Info_AddChoice (DIA_SC_Thief_Start, B_BuildLearnString(PRINT_LearnTalent_Acrobatic, B_GetLearnCostTalent(other, NPC_TALENT_ACROBATIC, 1)), SC_Training_Thief_Acrobatic);
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_PICKPOCKET) == 0)
	{
		Info_AddChoice (DIA_SC_Thief_Start, B_BuildLearnString(PRINT_LearnTalent_Pickpocket, B_GetLearnCostTalent(other, NPC_TALENT_PICKPOCKET, 1)), SC_Training_Thief_Pickpocket);
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_PICKLOCK) == 0)
	{
		Info_AddChoice (DIA_SC_Thief_Start, B_BuildLearnString(PRINT_LearnTalent_Picklock, B_GetLearnCostTalent(other, NPC_TALENT_PICKLOCK, 1)), SC_Training_Thief_Picklock);
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_SNEAK) == 0)
	{
		Info_AddChoice (DIA_SC_Thief_Start, B_BuildLearnString(PRINT_LearnTalent_Sneak, B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1)), SC_Training_Thief_Sneak);
	};
};
///******************************************************************************************
func void DIA_SC_Thief_BACK()
{
	Info_ClearChoices(DIA_SC_Thief_Start);
};
func void SC_Training_Thief_Sneak()
{
	B_TeachTalent (self, other, NPC_TALENT_SNEAK, 1);
	DIA_SC_Thief_Start_Info();
};
func void SC_Training_Thief_Picklock()
{
	B_TeachTalent (self, other, NPC_TALENT_PICKLOCK, 1);
	DIA_SC_Thief_Start_Info();
};
func void SC_Training_Thief_Pickpocket()
{
	B_TeachTalent (self, other, NPC_TALENT_PICKPOCKET, 1);
	DIA_SC_Thief_Start_Info();
};
func void SC_Training_Thief_Acrobatic()
{
	B_TeachTalent (self, other, NPC_TALENT_ACROBATIC, 1);
	DIA_SC_Thief_Start_Info();
};
func void SC_Training_Thief_Persuasion()
{
	B_TeachTalent (self, other, NPC_TALENT_PERSUASION, 1);
	DIA_SC_Thief_Start_Info();
};

///******************************************************************************************
instance DIA_SC_Magic (C_INFO)
{
	npc									=	SC;
	nr									=	5;
	condition							=	atrue;
	information							=	DIA_SC_Magic_Info;
	permanent							=	true;
	description							=	"Magia";
};
func void DIA_SC_Magic_Info()
{
	Info_ClearChoices(DIA_SC_Magic);

	Info_AddChoice (DIA_SC_Magic, DIALOG_BACK, DIA_SC_Magic_BACK);
};
///******************************************************************************************
func void DIA_SC_Magic_BACK()
{
	Info_ClearChoices(DIA_SC_Magic);
};

///******************************************************************************************
/*
INSTANCE DIA_SC_KREISE (C_INFO)
{
	npc			= SC;
	nr			= 4;
	condition			= DIA_SC_KREISE_Condition;
	information		= DIA_SC_KREISE_Info;
	permanent		= true;
	description		= "Magiczne krêgi";
};                       

FUNC INT DIA_SC_KREISE_Condition()
{
	if (SC_MagieStart == true)
	{		
		return true;
	};
};

FUNC VOID DIA_SC_KREISE_Info()
{
	Info_ClearChoices (DIA_SC_KREISE);
	Info_AddChoice	  (DIA_SC_KREISE, DIALOG_BACK, SC_KREISE_BACK);
	
	//Info_AddChoice	  (DIA_SC_KREISE,"Runy paladynów",  SC_Training_Runen_Paladin);
	
	Info_AddChoice 	  (DIA_SC_KREISE,"Szósty kr¹g",SC_KREISE_6);
	Info_AddChoice 	  (DIA_SC_KREISE,"Pi¹ty kr¹g", SC_KREISE_5);
	Info_AddChoice 	  (DIA_SC_KREISE,"Czwarty kr¹g", SC_KREISE_4);
	Info_AddChoice 	  (DIA_SC_KREISE,"Trzeci kr¹g", SC_KREISE_3);
	Info_AddChoice 	  (DIA_SC_KREISE,"Drugi kr¹g", SC_KREISE_2);
	Info_AddChoice 	  (DIA_SC_KREISE,"Pierwszy kr¹g",  SC_KREISE_1);  
};

//******************************************************************************************
FUNC VOID SC_KREISE_BACK()
{
	Info_ClearChoices (DIA_SC_KREISE);
};
FUNC VOID SC_KREISE_1()
{
	Info_ClearChoices (DIA_SC_KREISE);
	B_TeachMagicCircle (self, other, 1);
//	B_SetKDFRunes ();

	CreateInvItems(self,ItRu_Light,1);
	CreateInvItems(self,ItRu_Pyr10,1);
	CreateInvItems(self,ItRu_Zap,1);
	CreateInvItems(self,ItRu_LightHeal,1);

	CreateInvItems(self,ItRu_GreenTentacle,1);
};
FUNC VOID SC_KREISE_2()
{
	Info_ClearChoices (DIA_SC_KREISE);
	B_TeachMagicCircle (self, other, 2);
//	B_SetKDFRunes ();

	CreateInvItems(self,ItRu_InstantFireball,1);
	CreateInvItems(self,ItRu_Icebolt,1);
	CreateInvItems(self,ItRu_Windfist,1);
	CreateInvItems(self,ItRu_Sleep,1);
	
	CreateInvItems(self,ItRu_Whirlwind,1);
	CreateInvItems(self,ItRu_Icelance,1);
	
	CreateInvItems(self,ItRu_SuckEnergy,1);
};
FUNC VOID SC_KREISE_3()
{
	Info_ClearChoices (DIA_SC_KREISE);
	B_TeachMagicCircle (self, other, 3);
//	B_SetKDFRunes ();

	CreateInvItems(self,ItRu_MediumHeal,1);
	CreateInvItems(self,ItRu_Fear,1);
	CreateInvItems(self,ItRu_IceCube,1);
	CreateInvItems(self,ItRu_ThunderBall,1);
	
	CreateInvItems(self,ItRu_Thunderstorm,1);
	CreateInvItems(self,ItRu_Geyser,1);
	
	CreateInvItems(self,ItRu_BeliarsRage,1);
};
FUNC VOID SC_KREISE_4()
{
	Info_ClearChoices (DIA_SC_KREISE);
	B_TeachMagicCircle (self, other, 4);
//	B_SetKDFRunes ();

	CreateInvItems(self,ItRu_LightningFlash,1);
	CreateInvItems(self,ItRu_ChargeFireball,1);
	CreateInvItems(self,ItRu_HarmUndead,1);
	CreateInvItems(self,ItRu_Pyrokinesis,1);
	
	CreateInvItems(self,ItRu_Waterfist,1);
	
	CreateInvItems(self,ItRu_Swarm,1);
};
FUNC VOID SC_KREISE_5()
{
	Info_ClearChoices (DIA_SC_KREISE);
	B_TeachMagicCircle (self, other, 5);
//	B_SetKDFRunes ();

	CreateInvItems(self,ItRu_Firestorm,1);
	CreateInvItems(self,ItRu_IceWave,1);
	CreateInvItems(self,ItRu_FullHeal,1);
	
	CreateInvItems(self,ItRu_Skull,1);
};
FUNC VOID SC_KREISE_6()
{
	Info_ClearChoices (DIA_SC_KREISE);
	B_TeachMagicCircle (self, other, 6);
//	B_SetKDFRunes ();

	CreateInvItems(self,ItRu_Firerain,1);
	CreateInvItems(self,ItRu_BreathOfDeath,1);
	CreateInvItems(self,ItRu_MassDeath,1);
	CreateInvItems(self,ItRu_MasterOfDisaster,1);
	CreateInvItems(self,ItRu_Shrink,1);
};

//******************************************************************************************
INSTANCE DIA_SC_Runen (C_INFO)
{
	npc			= SC;
	nr			= 5;
	condition			= DIA_SC_Runen_Condition;
	information		= DIA_SC_Runen_Info;
	permanent		= true;
	description		= "Wyrób run";
};                       

FUNC INT DIA_SC_Runen_Condition()
{
	if (SC_MagieStart == true)
	{		
		return true;
	};
};

FUNC VOID DIA_SC_Runen_Info()
{
	Info_ClearChoices (DIA_SC_Runen);
	Info_AddChoice	  (DIA_SC_Runen, DIALOG_BACK, DIA_SC_Runen_BACK);
	
	if (Npc_GetTalentSkill (other, NPC_TALENT_KNOWLEDGE) == 90)
	{
		Info_AddChoice		(DIA_SC_Runen, B_BuildLearnString("6 kr¹g magii"	, B_GetLearnCostTalent(other, NPC_TALENT_KNOWLEDGE, 90))			,DIA_SC_Runen_6);
	};
	if (Npc_GetTalentSkill (other, NPC_TALENT_KNOWLEDGE) >= 75)
	{
		Info_AddChoice		(DIA_SC_Runen, B_BuildLearnString("5 kr¹g magii"	, B_GetLearnCostTalent(other, NPC_TALENT_KNOWLEDGE, 75))			,DIA_SC_Runen_5);
	};
	if (Npc_GetTalentSkill (other, NPC_TALENT_KNOWLEDGE) >= 60)
	{
		Info_AddChoice		(DIA_SC_Runen, B_BuildLearnString("4 kr¹g magii"	, B_GetLearnCostTalent(other, NPC_TALENT_KNOWLEDGE, 60))			,DIA_SC_Runen_4);
	};
	if (Npc_GetTalentSkill (other, NPC_TALENT_KNOWLEDGE) >= 45)
	{
		Info_AddChoice		(DIA_SC_Runen, B_BuildLearnString("3 kr¹g magii"	, B_GetLearnCostTalent(other, NPC_TALENT_KNOWLEDGE, 45))			,DIA_SC_Runen_3);
	};
	if (Npc_GetTalentSkill (other, NPC_TALENT_KNOWLEDGE) >= 30)
	{
		Info_AddChoice		(DIA_SC_Runen, B_BuildLearnString("2 kr¹g magii"	, B_GetLearnCostTalent(other, NPC_TALENT_KNOWLEDGE, 30))			,DIA_SC_Runen_2);
	};
	if (Npc_GetTalentSkill (other, NPC_TALENT_KNOWLEDGE) >= 15)
	{ 
		Info_AddChoice		(DIA_SC_Runen, B_BuildLearnString("1 kr¹g magii"	, B_GetLearnCostTalent(other, NPC_TALENT_KNOWLEDGE, 15))			,DIA_SC_Runen_1);
	};
};

//******************************************************************************************
FUNC VOID DIA_SC_Runen_BACK()
{
	Info_ClearChoices (DIA_SC_Runen);
};

//******************************************************************************************
// Erster Kreis
//******************************************************************************************
FUNC VOID DIA_SC_Runen_1 ()
{
	Info_ClearChoices (DIA_SC_Runen);
	Info_AddChoice	(DIA_SC_Runen, DIALOG_BACK, DIA_SC_Runen_BACK);
	
};
//******************************************************************************************
// Zweiter Kreis
//******************************************************************************************
FUNC VOID DIA_SC_Runen_2()
{
	Info_ClearChoices (DIA_SC_Runen);
	Info_AddChoice	(DIA_SC_Runen, DIALOG_BACK, DIA_SC_Runen_BACK);
	
};
//******************************************************************************************
// Dritter Kreis
//******************************************************************************************
FUNC VOID DIA_SC_Runen_3()
{
	Info_ClearChoices (DIA_SC_Runen);
	Info_AddChoice	(DIA_SC_Runen, DIALOG_BACK, DIA_SC_Runen_BACK);
	
};
//******************************************************************************************
// Vierter Kreis
//******************************************************************************************
FUNC VOID DIA_SC_Runen_4()
{
	Info_ClearChoices (DIA_SC_Runen);
	Info_AddChoice	(DIA_SC_Runen, DIALOG_BACK, DIA_SC_Runen_BACK);
	
};
//******************************************************************************************
// Fünfter Kreis
//******************************************************************************************
FUNC VOID DIA_SC_Runen_5()
{
	Info_ClearChoices (DIA_SC_Runen);
	Info_AddChoice	(DIA_SC_Runen, DIALOG_BACK, DIA_SC_Runen_BACK);

};
//******************************************************************************************
// Sechster Kreis
//******************************************************************************************
FUNC VOID DIA_SC_Runen_6()
{
	Info_ClearChoices (DIA_SC_Runen);
	Info_AddChoice	(DIA_SC_Runen, DIALOG_BACK, DIA_SC_Runen_BACK);
	
};
*/
///******************************************************************************************
instance DIA_SC_Misc_Start (C_INFO)
{
	npc									=	SC;
	nr									=	6;
	condition							=	atrue;
	information							=	DIA_SC_Misc_Start_Info;
	permanent							=	true;
	description							=	"Talenty rzemieœlnicze";
};
func void DIA_SC_Misc_Start_Info()
{
	Info_ClearChoices(DIA_SC_Misc_Start);
	Info_AddChoice (DIA_SC_Misc_Start, DIALOG_BACK, DIA_SC_Misc_BACK);

	if (Npc_GetTalentSkill(other, NPC_TALENT_ENCHANTING) == 0)
	{
		Info_AddChoice (DIA_SC_Misc_Start, B_BuildLearnString(PRINT_LearnTalent_Enchanting, B_GetLearnCostTalent(other, NPC_TALENT_ENCHANTING, Npc_GetTalentSkill(other, NPC_TALENT_ENCHANTING) + 1)), SC_Training_Enchanting);
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_HUNTING) == 0)
	{
		Info_AddChoice (DIA_SC_Misc_Start, B_BuildLearnString(PRINT_LearnTalent_Hunting, B_GetLearnCostTalent(other, NPC_TALENT_HUNTING, Npc_GetTalentSkill(other, NPC_TALENT_HUNTING) + 1)), SC_Training_Hunting);
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_ALCHEMY) == 0)
	{
		Info_AddChoice (DIA_SC_Misc_Start, B_BuildLearnString(PRINT_LearnTalent_Alchemy, B_GetLearnCostTalent(other, NPC_TALENT_ALCHEMY, Npc_GetTalentSkill(other, NPC_TALENT_ALCHEMY) + 1)), SC_Training_Alchemy);
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_JEWELERY) == 0)
	{
		Info_AddChoice (DIA_SC_Misc_Start, B_BuildLearnString(PRINT_LearnTalent_Jewelery, B_GetLearnCostTalent(other, NPC_TALENT_JEWELERY, Npc_GetTalentSkill(other, NPC_TALENT_JEWELERY) + 1)), SC_Training_Jewelery);
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_SMITH) == 0)
	{
		Info_AddChoice (DIA_SC_Misc_Start, B_BuildLearnString(PRINT_LearnTalent_Smith, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, Npc_GetTalentSkill(other, NPC_TALENT_SMITH) + 1)), SC_Training_Smith);
	};
};
///******************************************************************************************
func void DIA_SC_Misc_BACK()
{
	Info_ClearChoices(DIA_SC_Misc_Start);
};
func void SC_Training_Smith()
{
	B_TeachTalent (self, other, NPC_TALENT_SMITH, Npc_GetTalentSkill(other, NPC_TALENT_SMITH) + 1);
	DIA_SC_Misc_Start_Info();
};
func void SC_Training_Jewelery()
{
	B_TeachTalent (self, other, NPC_TALENT_JEWELERY, Npc_GetTalentSkill(other, NPC_TALENT_JEWELERY) + 1);
	DIA_SC_Misc_Start_Info();
};
func void SC_Training_Alchemy()
{
	B_TeachTalent (self, other, NPC_TALENT_ALCHEMY, Npc_GetTalentSkill(other, NPC_TALENT_ALCHEMY) + 1);
	DIA_SC_Misc_Start_Info();
};
func void SC_Training_Hunting()
{
	B_TeachTalent (self, other, NPC_TALENT_HUNTING, Npc_GetTalentSkill(other, NPC_TALENT_HUNTING) + 1);
	DIA_SC_Misc_Start_Info();
};
func void SC_Training_Enchanting()
{
	B_TeachTalent (self, other, NPC_TALENT_ENCHANTING, Npc_GetTalentSkill(other, NPC_TALENT_ENCHANTING) + 1);
	DIA_SC_Misc_Start_Info();
};
