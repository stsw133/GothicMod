///******************************************************************************************
instance BDT_1093_Addon_Franco (Npc_Default)
{
	/// ------ General ------
	name								=	"Franko";
	guild								=	GIL_BDT;
	id									=	1093;
	voice								=	8;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_Bandit;
	aivar[AIV_NewsOverride]				=	NEWS_Ambient;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ItMi_GoldNugget_Addon, 7);
//	CreateInvItems (self, ItAm_Addon_Franco,1);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_Tough01, Teeth_Normal, ItAr_BDT_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1093;
};

func void Rtn_Start_1093()
{
	TA_Stand_Guarding	(06,00, 20,00, "ADW_PATH_TO_BL_02");
	TA_Stand_Guarding	(20,00, 00,00, "BANDIT_FIGHT");
	TA_Stand_Eating		(00,00, 03,00, "BANDIT_FIGHT");
	TA_Stand_Drinking	(03,00, 06,00, "BANDIT_FIGHT");
};
