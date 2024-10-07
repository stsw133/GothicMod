///******************************************************************************************
instance BDT_1086_Addon_Scatty (Npc_Default)
{
	/// ------ General ------
	name								=	"Scatty";
	guild								=	GIL_BDT;
	id									=	1086;
	voice								=	1;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 75);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Schwert5);
	
	/// ------ Inventory ------
	CreateInvItems (self, ItMi_GoldNugget_Addon, 5);
	CreateInvItems (self, ItPo_Health_03, 2);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_FatBald", Face_L_Scatty, Teeth_Normal, ItAr_RVN_L);
	Mdl_SetModelFatness	(self, 1.6);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1086;
};

func void Rtn_Start_1086()
{
	TA_Stand_Guarding	(19,00, 20,00, "BL_MINELAGER_06");
	TA_Stand_Guarding	(20,00, 09,00, "BL_MINELAGER_06");
};
