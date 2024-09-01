///******************************************************************************************
instance BDT_1060_Dexter (Npc_Default)
{
	/// ------ General ------
	name								=	"Dexter";
	guild								=	GIL_BDT;
	id									=	1060;
	voice								=	9;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_EnemyOverride]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_ShortSword2);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_Dexter);
	CreateInvItem (self, ItWr_RavensKidnapperMission_Addon);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_NormalBart_Dexter, Teeth_Normal, ItAr_RVN_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1060;
};

func void RTn_Start_1060()
{
	TA_Sit_Throne	(00,00, 12,00, "NW_CASTLEMINE_HUT_10");
	TA_Sit_Throne	(12,00, 00,00, "NW_CASTLEMINE_HUT_10");
};
