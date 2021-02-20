//******************************************************************************************
instance BAU_937_Bauer (Npc_Default)
{
	// ------ General ------
	name								=	NAME_BAUER;
	guild 								=	GIL_OUT;
	id 									=	937;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal55, 0, ITAR_Bau_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_937;
};

FUNC VOID Rtn_Start_937()
{	
	TA_Rake_FP		(08,00,22,00, "NW_FARM4_FIELD_01");
    TA_Sit_Campfire	(22,00,08,00, "NW_FARM4_REST_01");
};
FUNC VOID Rtn_FleeDMT_937()
{	
	TA_Rake_FP	(08,00,22,00, "NW_FARM4_FIELD_01");
    TA_Rake_FP	(22,00,08,00, "NW_FARM4_FIELD_01");
};
