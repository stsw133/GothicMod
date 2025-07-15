///******************************************************************************************
instance BDT_1077_Addon_Bandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild								=	GIL_BDT;
	id									=	1077;
	voice								=	1;
	npctype								=	NPCTYPE_TAL_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 90);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Psionic", Face_P_Normal01, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, -0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1077;
};

func void Rtn_Start_1077()
{
	TA_Smalltalk		(06,00, 12,00, "BL_SMALLTALK_01");
	TA_Smith_Sharp		(12,00, 22,04, "ADW_PATH_TO_BL_SHARP");
	TA_Roast_Scavenger	(22,04, 06,00, "ADW_SWAMP_ROAST");
};
