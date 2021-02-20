//******************************************************************************************
instance BAU_940_Akil (Npc_Default)
{
	// ------ General ------
	name								=	"Akil";
	guild 								=	GIL_OUT;
	id 									=	940;
	voice 								=	13;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal46, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_940;
};

FUNC VOID Rtn_PreStart_940()
{	
	TA_Smalltalk	(08,00,22,00, "NW_FARM2_PATH_02");
    TA_Smalltalk	(22,00,08,00, "NW_FARM2_PATH_02");
};
FUNC VOID Rtn_Start_940()
{	
	TA_Sit_Bench		(05,00,10,00, "NW_FARM2_BENCH_02");
    TA_Stand_Guarding	(10,00,12,00, "NW_FARM2_PATH_01_B");
    TA_Sit_Bench		(12,00,14,00, "NW_FARM2_BENCH_02");
    TA_Stand_Guarding	(14,00,16,00, "NW_FARM2_FIELD_01");
   	TA_Sit_Bench		(16,00,21,00, "NW_FARM2_BENCH_02");
   	TA_Sit_Bench		(21,00,00,00, "NW_FARM2_OUT_06");
    TA_Sleep			(00,00,05,00, "NW_FARM2_HOUSE_IN_02");
};
