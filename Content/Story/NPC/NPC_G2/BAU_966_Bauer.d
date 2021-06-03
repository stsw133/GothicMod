///******************************************************************************************
instance BAU_966_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild 								=	GIL_OUT;
	id 									=	966;
	voice 								=	7;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal49, 0, ITAR_BAU_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_966;
};

func void Rtn_Start_966()
{	
	TA_Rake_FP		(08,00,22,00, "NW_FARM3_FIELD_03");
    TA_Sit_Campfire	(22,00,08,00, "NW_FARM3_HOUSE_REST_01");
};
func void Rtn_FleeFromPass_966()
{	
	TA_Sit_Campfire	(08,00,22,00, "NW_BIGMILL_MALAKSVERSTECK_05");
    TA_Sit_Campfire	(22,00,08,00, "NW_BIGMILL_MALAKSVERSTECK_05");
};
