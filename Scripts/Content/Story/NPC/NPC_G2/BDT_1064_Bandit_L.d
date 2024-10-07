///******************************************************************************************
instance BDT_1064_Bandit_L (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Bandit;
	guild								=	GIL_BDT;
	id									=	1064;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_EnemyOverride]			=	true;
	aivar[AIV_NewsOverride]				=	NEWS_Ambient;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_Normal_Orik, Teeth_Normal, ItAr_BDT_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1064;
};

func void RTn_Start_1064()
{
	TA_Guard_Passage	(00,00, 12,00, "NW_CASTLEMINE_TOWER_BEYOND");
	TA_Guard_Passage	(12,00, 00,00, "NW_CASTLEMINE_TOWER_BEYOND");
};
