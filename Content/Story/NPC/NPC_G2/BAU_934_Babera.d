//******************************************************************************************
instance BAU_934_Babera (Npc_Default)
{
	// ------ General ------
	name								=	"Babera";
	guild 								=	GIL_OUT;
	id 									=	934;
	voice 								=	16;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

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
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe", FaceBabe_Normal04, Teeth_Pretty, ITAR_WD_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_934;
};

FUNC VOID Rtn_Start_934()
{	
	TA_Pick_FP		(08,00,22,00, "NW_FARM4_FIELD_01");
    TA_Sit_Campfire	(22,00,08,00, "NW_FARM4_REST_02");
};
FUNC VOID Rtn_FleeDMT_934()
{	
	TA_Pick_FP	(08,00,22,00, "NW_FARM4_FIELD_01");
    TA_Pick_FP	(22,00,08,00, "NW_FARM4_FIELD_01");
};
