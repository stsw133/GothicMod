//******************************************************************************************
instance BAU_972_Bauer (Npc_Default)
{
	// ------ General ------
	name								=	NAME_BAUER;
	guild 								=	GIL_OUT;
	id 									=	972;
	voice 								=	7;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal43, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_972;
};

FUNC VOID Rtn_Start_972()
{
	TA_Smalltalk	(08,00,22,00, "NW_TAVERNE_IN_05");
    TA_Smalltalk	(22,00,08,00, "NW_TAVERNE_IN_05");
};
