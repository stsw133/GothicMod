///******************************************************************************************
instance KDW_1400_Addon_Saturas_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Saturas";
	guild								=	GIL_KDW;
	id									=	1400;
	voice								=	14;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_Saturas, Teeth_Normal, ItAr_Mag_A);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1400;
};

func void Rtn_Start_1400()
{
	TA_Study_WP	(08,00, 20,00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_01");
	TA_Study_WP	(20,00, 08,00, "NW_TROLLAREA_PORTALTEMPEL_STUDY_01");
};
func void Rtn_Ringritual_1400()
{
	TA_Circle	(08,00, 20,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
	TA_Circle	(20,00, 08,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
};
func void Rtn_PreRingritual_1400()
{
	TA_Study_WP	(08,00, 20,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
	TA_Study_WP	(20,00, 08,00, "NW_TROLLAREA_PORTALTEMPEL_RITUAL_01");
};
func void Rtn_OpenPortal_1400()
{
	TA_Study_WP	(08,00, 20,00, "NW_TROLLAREA_PORTAL_KDWWAIT_01");
	TA_Study_WP	(20,00, 08,00, "NW_TROLLAREA_PORTAL_KDWWAIT_01");
};
func void Rtn_TOT_1400()
{
	TA_Sleep	(08,00, 20,00, "TOT");
	TA_Sleep	(20,00, 08,00, "TOT");
};
