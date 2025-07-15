///******************************************************************************************
instance BDT_10026_Addon_Wache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Wache;
	guild								=	GIL_BDT;
	id									=	10026;
	voice								=	13;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Sld_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal_Erpresser, Teeth_Normal, ItAr_RVN_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10026;
};

func void Rtn_Start_10026()
{
	TA_Stand_Eating	(06,00, 12,00, "ADW_MINE_18");
	TA_Stand_Eating	(12,00, 06,00, "ADW_MINE_18");
};
