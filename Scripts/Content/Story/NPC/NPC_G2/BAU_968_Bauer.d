///******************************************************************************************
instance BAU_968_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild								=	GIL_OUT;
	id									=	968;
	voice								=	13;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 10);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_Ian, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_968;
};

func void Rtn_Start_968()
{
	TA_Rake_FP		(08,00, 22,00, "NW_FARM3_FIELD_01");
	TA_Sit_Campfire	(22,00, 08,00, "NW_FARM3_STABLE_REST_01");
};
func void Rtn_FleeFromPass_968()
{
	TA_Sit_Campfire	(08,00, 22,00, "NW_BIGMILL_MALAKSVERSTECK_06");
	TA_Sit_Campfire	(22,00, 08,00, "NW_BIGMILL_MALAKSVERSTECK_06");
};
