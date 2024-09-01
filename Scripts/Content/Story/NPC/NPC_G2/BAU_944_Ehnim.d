///******************************************************************************************
instance BAU_944_Ehnim (Npc_Default)
{
	/// ------ General ------
	name								=	"Ehnim";
	guild								=	GIL_OUT;
	id									=	944;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItPo_Health_02);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_FatBald", Face_P_Normal03, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_944;
};

func void Rtn_Start_944()
{
	TA_Rake_FP		(05,00, 12,00, "NW_FARM2_FIELD_03");
	TA_Sit_Campfire	(12,00, 14,00, "NW_FARM2_FIELD_03_B");
	TA_Rake_FP		(14,00, 21,00, "NW_FARM2_FIELD_03");
	TA_Sit_Campfire	(21,00, 05,00, "NW_FARM2_OUT_03");
};
