///******************************************************************************************
instance BAU_967_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild 								=	GIL_OUT;
	id 									=	967;
	voice 								=	1;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Weak);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_FatBald", Face_Jackal, 0, ITAR_BAU_00);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_967;
};

func void Rtn_Start_967()
{	
	TA_Pick_FP		(08,00,22,00, "NW_FARM3_FIELD_02");
    TA_Sit_Campfire	(22,00,08,00, "NW_FARM3_STABLE_REST_01");
};
func void Rtn_FleeFromPass_967()
{	
	TA_Sit_Campfire	(08,00,22,00, "NW_BIGMILL_MALAKSVERSTECK_06");
    TA_Sit_Campfire	(22,00,08,00, "NW_BIGMILL_MALAKSVERSTECK_06");
};
