///******************************************************************************************
instance BDT_1020_Bandit_L (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Bandit;
	guild								=	GIL_BDT;
	id									=	1020;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_EnemyOverride]			=	true;
	aivar[AIV_DropDeadAndKill]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Mud, Teeth_Normal, ItAr_BDT_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	TA_Guard_Passage	(00,00, 12,00, "NW_TROLLAREA_PATH_47");
	TA_Guard_Passage	(12,00, 00,00, "NW_TROLLAREA_PATH_47");
};
