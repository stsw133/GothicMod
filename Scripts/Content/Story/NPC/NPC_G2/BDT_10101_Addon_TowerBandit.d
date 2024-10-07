///******************************************************************************************
instance BDT_10101_Addon_TowerBandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild								=	GIL_BDT;
	id									=	10101;
	voice								=	13;
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
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Fighter", Face_L_Ratford, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, 0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10101;
};

func void Rtn_Start_10101()
{
	TA_Sit_Campfire	(09,00, 21,00, "ADW_PIRATECAMP_2_TOWER_05");
	TA_Sit_Campfire	(21,00, 09,00, "ADW_PIRATECAMP_2_TOWER_05");
};
