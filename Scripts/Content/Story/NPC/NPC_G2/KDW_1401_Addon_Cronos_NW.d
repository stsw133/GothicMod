///******************************************************************************************
instance KDW_1401_Addon_Cronos_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Cronos";
	guild 								=	GIL_KDW;
	id 									=	1401;
	voice 								=	4;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_ELE;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Thief", Face_Normal11, 0, ITAR_Mag_A);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_1401;
};

func void Rtn_PreStart_1401()
{
	TA_Smalltalk	(08,00,20,00, "PORTAL");
	TA_Smalltalk	(20,00,08,00, "PORTAL");
};
func void Rtn_Start_1401()
{
	TA_Study_WP	(08,00,20,00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_02");
	TA_Study_WP	(20,00,08,00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_02");
};
func void Rtn_Ringritual_1401()
{
	TA_Circle	(08,00,20,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_03");
	TA_Circle	(20,00,08,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_03");
};
func void Rtn_PreRingritual_1401()
{
	TA_Study_WP	(08,00,20,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_03");
	TA_Study_WP	(20,00,08,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_03");
};
func void Rtn_OpenPortal_1401()
{
	TA_Study_WP	(08,00,20,00, "NW_TROLLAREA_PORTAL_KDWWAIT_02");
	TA_Study_WP	(20,00,08,00, "NW_TROLLAREA_PORTAL_KDWWAIT_02");
};
func void Rtn_TOT_1401()
{
	TA_Sleep	(08,00,20,00, "TOT");
	TA_Sleep	(20,00,08,00, "TOT");
};
