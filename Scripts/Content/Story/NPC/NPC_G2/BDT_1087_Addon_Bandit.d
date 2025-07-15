///******************************************************************************************
instance BDT_1087_Addon_Bandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Bandit;
	guild								=	GIL_BDT;
	id									=	1087;
	voice								=	1;
	npctype								=	NPCTYPE_TAL_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 90);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_ToughBald, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1087;
};

func void Rtn_Start_1087()
{
	TA_Sit_Campfire	(09,00, 21,00, "ADW_BANDIT_VP1_02");
	TA_Sit_Campfire	(21,00, 09,00, "ADW_BANDIT_VP1_02");
};
