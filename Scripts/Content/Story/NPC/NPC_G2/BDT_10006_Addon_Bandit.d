///******************************************************************************************
instance BDT_10006_Addon_Bandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild								=	GIL_BDT;
	id									=	10006;
	voice								=	1;
	npctype								=	NPCTYPE_BL_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_Normal02, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10006;
};

func void Rtn_Start_10006()
{
	TA_Sit_Bench	(02,00, 16,00, "BL_MID_10_C");
	TA_Cook_Pan		(16,00, 20,00, "BL_DOWN_RING_05");
	TA_Stand_Eating	(20,00, 02,00, "BL_DOWN_RING_01");
};
