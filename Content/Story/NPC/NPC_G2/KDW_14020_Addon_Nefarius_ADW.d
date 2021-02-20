//******************************************************************************************
INSTANCE KDW_14020_Addon_Nefarius_ADW (Npc_Default)
{
	// ------ General ------
	name								=	"Nefarius";
	guild 								=	GIL_KDW;
	id 									=	14020;
	voice 								=	5;
	flags       						=	0;
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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_Psionic", Face_Normal12, 0, ITAR_MgA);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_14020;
};

FUNC VOID Rtn_Start_14020()
{
	TA_Study_WP		(06,50,07,50, "ADW_ENTRANCE_PLATEAU_11A");
	TA_Study_WP		(07,50,08,35, "PORTALTEMPEL");
	TA_Study_WP		(08,35,09,50, "ADW_ENTRANCE_PLATEAU_11A");
	TA_Study_WP		(09,50,10,45, "PORTALTEMPEL");
	TA_Study_WP		(10,45,11,15, "ADW_ENTRANCE_PLATEAU_11A");
	TA_Study_WP		(11,15,12,50, "PORTALTEMPEL");

	TA_Study_WP		(12,50,13,50, "ADW_ENTRANCE_PLATEAU_11A");
	TA_Study_WP		(13,50,14,35, "PORTALTEMPEL");
	TA_Study_WP		(14,35,15,50, "ADW_ENTRANCE_PLATEAU_11A");
	TA_Study_WP		(15,50,16,45, "PORTALTEMPEL");
	TA_Study_WP		(16,45,17,15, "ADW_ENTRANCE_PLATEAU_11A");
	TA_Study_WP		(17,15,18,50, "PORTALTEMPEL");

	TA_Study_WP		(18,50,19,50, "ADW_ENTRANCE_PLATEAU_11A");
	TA_Study_WP		(19,50,20,35, "PORTALTEMPEL");
	TA_Study_WP		(20,35,21,50, "ADW_ENTRANCE_PLATEAU_11A");
	TA_Study_WP		(21,50,22,00, "PORTALTEMPEL");

	TA_Smalltalk	(22,00,06,50, "ADW_ENTRANCE_BUILDING2_03");
};
