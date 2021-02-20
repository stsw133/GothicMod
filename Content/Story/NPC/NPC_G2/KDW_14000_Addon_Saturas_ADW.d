//******************************************************************************************
INSTANCE KDW_14000_Addon_Saturas_ADW (Npc_Default)
{
	// ------ General ------
	name								=	"Saturas";
	guild 								=	GIL_KDW;
	id 									=	14000;
	voice 								=	14;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_ELE;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Bald", Face_Saturas, 0, ITAR_MgA);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_14000;
};

FUNC VOID Rtn_PreStart_14000()
{
	TA_Study_WP	(08,25,21,35, "ADW_SATURAS_START");
	TA_Study_WP	(21,35,08,25, "ADW_SATURAS_START");
};
FUNC VOID Rtn_Start_14000()
{
	TA_Study_WP		(08,25,09,35, "ADW_ENTRANCE_BUILDING2_01A");
	TA_Study_WP		(09,35,10,45, "ADW_ENTRANCE_BUILDING2_04");
	TA_Study_WP		(10,45,11,55, "ADW_ENTRANCE_PLATEAU_21");
	TA_Study_WP		(11,55,12,05, "ADW_ENTRANCE_BUILDING2_01A");

	TA_Study_WP		(12,05,13,15, "ADW_ENTRANCE_BUILDING2_04");
	TA_Study_WP		(13,15,14,25, "ADW_ENTRANCE_PLATEAU_21");
	TA_Study_WP		(14,25,15,35, "ADW_ENTRANCE_BUILDING2_01A");
	TA_Study_WP		(15,35,16,45, "ADW_ENTRANCE_BUILDING2_04");
	TA_Study_WP		(16,45,17,55, "ADW_ENTRANCE_PLATEAU_21");
	TA_Study_WP		(17,55,18,05, "ADW_ENTRANCE_BUILDING2_01A");

	TA_Sit_Bench	(18,05,19,15, "ADW_ENTRANCE_BUILDING2_02A");
	TA_Study_WP		(19,15,20,25, "ADW_ENTRANCE_BUILDING2_04");
	TA_Sit_Bench	(20,25,21,35, "ADW_ENTRANCE_BUILDING2_02A");
	TA_Study_WP		(21,35,22,45, "ADW_ENTRANCE_BUILDING2_04");
	TA_Sit_Bench	(22,45,01,15, "ADW_ENTRANCE_BUILDING2_02A");
	TA_Study_WP		(01,15,03,25, "ADW_ENTRANCE_BUILDING2_04");
	TA_Sit_Bench	(03,25,05,35, "ADW_ENTRANCE_BUILDING2_02A");
	TA_Study_WP		(05,35,07,45, "ADW_ENTRANCE_BUILDING2_04");
	TA_Sit_Bench	(07,45,08,25, "ADW_ENTRANCE_BUILDING2_02A");
};
