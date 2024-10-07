///******************************************************************************************
instance BDT_1014_Bandit_L (Npc_Default)
{
	/// ------ General ------
	name								=	"Brago";
	guild								=	GIL_BDT;
	id									=	1014;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_EnemyOverride]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 5);
	NpcFn_AddFightSkills (self, 10);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Nagelknueppel);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_Bandit);
	CreateInvItem (self, ItWr_SaturasFirstMessage_Addon_Sealed);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_N_Mud, Teeth_Normal, ItAr_BDT_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	RTN_Start_1014;
};

func void Rtn_Start_1014()
{
	TA_Stand_ArmsCrossed	(00,00, 12,00, "NW_XARDAS_BANDITS_LEFT");
	TA_Stand_ArmsCrossed	(12,00, 00,00, "NW_XARDAS_BANDITS_LEFT");
};
