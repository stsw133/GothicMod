//******************************************************************************************
instance BAU_914_Baeuerin (Npc_Default)
{
	// ------ General ------
	name								=	NAME_MAGD;
	guild 								=	GIL_BAU;
	id 									=	914;
	voice 								=	16;
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
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe", FaceBabe_Velaya, 0, ITAR_WD_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_914;
};

FUNC VOID Rtn_Start_914()
{	
	TA_Cook_Stove	(07,00,20,00, "NW_BIGFARM_HOUSE_UP1_COOK");
    TA_Stand_Eating	(20,00,07,00, "NW_BIGFARM_STABLE_05");
};
