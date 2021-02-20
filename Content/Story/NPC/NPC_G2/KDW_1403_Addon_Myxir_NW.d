//******************************************************************************************
INSTANCE KDW_1403_Addon_Myxir_NW (Npc_Default)
{
	// ------ General ------
	name								=	"Myxir";
	guild 								=	GIL_KDW;
	id 									=	1403;
	voice 								=	12;
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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_Pony", Face_Normal11, 0, ITAR_MgA);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1403;
};

FUNC VOID Rtn_Start_1403()
{
	TA_Study_WP	(08,00,20,00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_03");
	TA_Study_WP	(20,00,08,00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_03");
};
FUNC VOID Rtn_Ringritual_1403()
{
	TA_Circle	(08,00,20,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_04");
	TA_Circle	(20,00,08,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_04");
};
FUNC VOID Rtn_PreRingritual_1403()
{
	TA_Study_WP	(08,00,20,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_04");
	TA_Study_WP	(20,00,08,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_04");
};
FUNC VOID Rtn_OpenPortal_1403()
{
	TA_Study_WP	(08,00,20,00, "NW_TROLLAREA_PORTAL_KDWWAIT_04");
	TA_Study_WP	(20,00,08,00, "NW_TROLLAREA_PORTAL_KDWWAIT_04");
};
FUNC VOID Rtn_TOT_1403()
{
	TA_Sleep	(08,00,20,00, "TOT");
	TA_Sleep	(20,00,08,00, "TOT");
};
