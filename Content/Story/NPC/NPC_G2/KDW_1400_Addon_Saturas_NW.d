//******************************************************************************************
INSTANCE KDW_1400_Addon_Saturas_NW (Npc_Default)
{
	// ------ General ------
	name								=	"Saturas";
	guild 								=	GIL_KDW;
	id 									=	1400;
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
	daily_routine 						=	Rtn_Start_1400;
};

FUNC VOID Rtn_Start_1400()
{
	TA_Study_WP	(08,00,20,00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_01");
	TA_Study_WP	(20,00,08,00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_01");
};
FUNC VOID Rtn_Ringritual_1400()
{
	TA_Circle	(08,00,20,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
	TA_Circle	(20,00,08,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
};
FUNC VOID Rtn_PreRingritual_1400()
{
	TA_Study_WP	(08,00,20,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
	TA_Study_WP	(20,00,08,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
};
FUNC VOID Rtn_OpenPortal_1400()
{
	TA_Study_WP	(08,00,20,00, "NW_TROLLAREA_PORTAL_KDWWAIT_01");
	TA_Study_WP	(20,00,08,00, "NW_TROLLAREA_PORTAL_KDWWAIT_01");
};
FUNC VOID Rtn_TOT_1400()
{
	TA_Sleep	(08,00,20,00, "TOT");
	TA_Sleep	(20,00,08,00, "TOT");
};
