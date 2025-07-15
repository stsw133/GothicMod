///******************************************************************************************
instance BDT_10019_Addon_Wache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Guard;
	guild								=	GIL_BDT;
	id									=	10019;
	voice								=	6;
	flags     							=	0;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_Krummschwert);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_Normal_Spassvogel, Teeth_Normal, ItAr_RVN_H);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10019;
};

func void Rtn_Start_10019()
{
	TA_Stand_WP	(00,00, 12,00, "BL_UP_PLACE_04");
	TA_Stand_WP	(12,00, 00,00, "BL_UP_PLACE_04");
};
