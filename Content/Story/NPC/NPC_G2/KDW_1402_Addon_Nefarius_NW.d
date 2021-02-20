//******************************************************************************************
INSTANCE KDW_1402_Addon_Nefarius_NW (Npc_Default)
{
	// ------ General ------
	name								=	"Nefarius";
	guild 								=	GIL_KDW;
	id 									=	1402;
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
	daily_routine 						=	Rtn_Start_1402;
};

FUNC VOID Rtn_Start_1402()
{
	TA_Study_WP	(08,00,20,00, "NW_TROLLAREA_PORTAL_09");
	TA_Study_WP	(20,00,08,00, "NW_TROLLAREA_PORTAL_09");
};
FUNC VOID Rtn_Ringritual_1402()
{
	TA_Circle	(08,00,20,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_02");
	TA_Circle	(20,00,08,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_02");
};
FUNC VOID Rtn_PreRingritual_1402()
{
	TA_Stand_WP	(08,00,20,00, "NW_TROLLAREA_PORTALTEMPEL_42");
	TA_Stand_WP	(20,00,08,00, "NW_TROLLAREA_PORTALTEMPEL_42");
};
FUNC VOID Rtn_OpenPortal_1402()
{
	TA_Study_WP	(08,00,20,00, "NW_TROLLAREA_PORTAL_KDWWAIT_03");
	TA_Study_WP	(20,00,08,00, "NW_TROLLAREA_PORTAL_KDWWAIT_03");
};
FUNC VOID Rtn_TOT_1402()
{
	TA_Sleep	(08,00,20,00, "TOT");
	TA_Sleep	(20,00,08,00, "TOT");
};
