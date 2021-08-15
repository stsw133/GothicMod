///******************************************************************************************
instance BAU_962_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild 								=	GIL_OUT;
	id 									=	962;
	voice 								=	7;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_Normal14, 0, ITAR_BAU_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_962;
};

func void Rtn_Start_962()
{	
	TA_Smalltalk	(08,00,22,00, "NW_FARM3_STABLE_OUT_03");
    TA_Sit_Campfire	(22,00,08,00, "NW_FARM3_STABLE_REST_02");
};
func void Rtn_FleeFromPass_962()
{	
	TA_Stand_WP	(08,00,22,00, "NW_BIGMILL_MALAKSVERSTECK_06");
    TA_Stand_WP	(22,00,08,00, "NW_BIGMILL_MALAKSVERSTECK_06");
};
