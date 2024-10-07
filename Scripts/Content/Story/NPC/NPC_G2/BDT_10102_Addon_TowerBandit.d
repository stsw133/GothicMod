///******************************************************************************************
instance BDT_10102_Addon_TowerBandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild								=	GIL_BDT;
	id									=	10102;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Psionic", Face_L_Normal_GorNaBar, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, 0.7);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10102;
};

func void Rtn_Start_10102()
{
	TA_Stand_Drinking	(09,00, 21,00,"ADW_PIRATECAMP_2_TOWER_05");
	TA_Stand_Drinking	(21,00, 09,00,"ADW_PIRATECAMP_2_TOWER_05");
};
