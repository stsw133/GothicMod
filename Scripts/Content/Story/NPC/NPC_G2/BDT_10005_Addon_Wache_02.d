///******************************************************************************************
instance BDT_10005_Addon_Wache_02 (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_EstebanGuard;
	guild								=	GIL_BDT;
	id									=	10005;
	voice								=	13;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_Bandit | STORY_Esteban;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 45);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Axe);
	EquipItem (self, ItRw_Mil_Crossbow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_FatBald", Face_B_Normal_Orik, Teeth_Normal, ItAr_RVN_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10005;
};

func void Rtn_Start_10005()
{
	TA_Stand_Guarding	(09,00, 21,00, "BL_MID_07_SHARP");
	TA_Stand_Guarding	(21,00, 09,00, "BL_MID_07_SHARP");
};
func void Rtn_Ambush_10005()
{
	TA_Stand_Guarding	(09,00, 21,00, "BL_INN_OUTSIDE_02");
	TA_Stand_Guarding	(21,00, 09,00, "BL_INN_OUTSIDE_02");
};
