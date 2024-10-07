///******************************************************************************************
instance BAU_965_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild								=	GIL_OUT;
	id									=	965;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 10);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_FatBald", Face_L_NormalBart_Rufus, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_965;
};

func void Rtn_Start_965()
{
	TA_Smalltalk	(08,00, 22,00, "NW_FARM3_STABLE_OUT_03");
	TA_Sit_Campfire	(22,00, 08,00, "NW_FARM3_HOUSE_REST_01");
};
func void Rtn_FleeFromPass_965()
{
	TA_Sit_Campfire	(08,00, 22,00,"NW_BIGMILL_MALAKSVERSTECK_05");
	TA_Sit_Campfire	(22,00, 08,00,"NW_BIGMILL_MALAKSVERSTECK_05");
};
