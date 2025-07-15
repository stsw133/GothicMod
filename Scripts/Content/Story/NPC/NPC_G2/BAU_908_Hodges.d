///******************************************************************************************
instance BAU_908_Hodges (Npc_Default)
{
	/// ------ General ------
	name								=	"Hodges";
	guild								=	GIL_BAU;
	id									=	908;
	voice								=	3;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItMw_1h_Bau_Mace);
	CreateInvItem (self, ItMw_1h_Vlk_Axe);
	CreateInvItem (self, ItMw_1H_Mace_L_04);
	CreateInvItem (self, ItMw_1h_Sld_Axe);
	CreateInvItem (self, ItMw_1h_Sld_Sword);
	CreateInvItem (self, ItMw_Schwert);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_FatBald", Face_L_NormalBart01, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_908;
};

func void Rtn_Start_908()
{
	TA_Smith_Sharp	(07,00, 19,00, "NW_BIGFARM_SMITH_SHARP");
	TA_Sleep		(19,00, 07,00, "NW_BIGFARM_STABLE_SLEEP_02");
};
func void Rtn_BennetWeg_908()
{
	TA_Stand_Drinking	(07,00, 19,00, "NW_BIGFARM_PATH_HODGES");
	TA_Stand_Drinking	(19,00, 07,00, "NW_BIGFARM_PATH_HODGES");
};
