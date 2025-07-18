///******************************************************************************************
instance KDW_1404_Addon_Riordian_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Riordian";
	guild								=	GIL_KDW;
	id									=	1404;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_NormalBart_Riordian, Teeth_Normal, ItAr_Mag_A);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1404;
};

func void Rtn_Start_1404()
{
	TA_Stand_Guarding	(08,00, 20,00, "NW_TROLLAREA_PORTALTEMPEL_34");
	TA_Stand_Guarding	(20,00, 08,00, "NW_TROLLAREA_PORTALTEMPEL_34");
};
func void Rtn_Saturas_1404()
{
	TA_Study_WP	(08,00, 20,00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_04");
	TA_Study_WP	(20,00, 08,00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_04");
};
func void Rtn_Ringritual_1404()
{
	TA_Circle	(08,00, 20,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_05");
	TA_Circle	(20,00, 08,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_05");
};
func void Rtn_PreRingritual_1404()
{
	TA_Study_WP	(08,00, 20,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_05");
	TA_Study_WP	(20,00, 08,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_05");
};
func void Rtn_OpenPortal_1404()
{
	TA_Study_WP	(08,00, 20,00, "NW_TROLLAREA_PORTAL_KDWWAIT_05");
	TA_Study_WP	(20,00, 08,00, "NW_TROLLAREA_PORTAL_KDWWAIT_05");
};
func void Rtn_TOT_1404()
{
	TA_Sleep	(08,00, 20,00, "TOT");
	TA_Sleep	(20,00, 08,00, "TOT");
};
