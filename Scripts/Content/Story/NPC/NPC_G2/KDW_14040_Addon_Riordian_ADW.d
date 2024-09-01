///******************************************************************************************
instance KDW_14040_Addon_Riordian_ADW (Npc_Default)
{
	/// ------ General ------
	name								=	"Riordian";
	guild								=	GIL_KDW;
	id									=	14040;
	voice								=	10;
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
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_NormalBart_Riordian, Teeth_Normal, ItAr_Mag_A);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_14040;
};

func void Rtn_Start_14040()
{
	TA_Study_WP	(07,05, 07,20, "ADW_ENTRANCE_PLATEAU_06A");
	TA_Study_WP	(07,20, 08,25, "ADW_ENTRANCE_PLATEAU_10A");
	TA_Study_WP	(08,25, 09,05, "ADW_ENTRANCE_PLATEAU_14A");
	TA_Study_WP	(09,05, 10,45, "ADW_ENTRANCE_PLATEAU_06A");
	TA_Study_WP	(10,45, 11,55, "ADW_ENTRANCE_PLATEAU_14A");
	TA_Study_WP	(11,55, 12,05, "ADW_ENTRANCE_PLATEAU_10A");
	
	TA_Study_WP	(12,05, 13,20, "ADW_ENTRANCE_PLATEAU_06A");
	TA_Study_WP	(13,20, 14,25, "ADW_ENTRANCE_PLATEAU_14A");
	TA_Study_WP	(14,25, 15,05, "ADW_ENTRANCE_PLATEAU_10A");
	TA_Study_WP	(15,05, 16,45, "ADW_ENTRANCE_PLATEAU_06A");
	TA_Study_WP	(16,45, 17,55, "ADW_ENTRANCE_PLATEAU_14A");
	TA_Study_WP	(17,55, 18,05, "ADW_ENTRANCE_PLATEAU_10A");
	
	TA_Study_WP	(18,05, 19,20, "ADW_ENTRANCE_PLATEAU_06A");
	TA_Study_WP	(19,20, 20,25, "ADW_ENTRANCE_PLATEAU_10A");
	TA_Study_WP	(20,25, 21,05, "ADW_ENTRANCE_PLATEAU_06A");
	TA_Study_WP	(21,05, 22,00, "ADW_ENTRANCE_PLATEAU_10A");
	
	TA_Sleep	(22,00, 07,05, "ADW_ENTRANCE_BUILDING2_05");
};
