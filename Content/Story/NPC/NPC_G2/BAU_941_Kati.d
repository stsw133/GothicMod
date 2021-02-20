//******************************************************************************************
instance BAU_941_Kati (Npc_Default)
{
	// ------ General ------
	name								=	"Kati";
	guild 								=	GIL_OUT;
	id 									=	941;
	voice 								=	16;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

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
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe8", FaceBabe_Normal09, Teeth_Pretty, ITAR_WD_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_941;
};

FUNC VOID Rtn_PreStart_941()
{	
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_FARM2_PATH_01");
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_FARM2_PATH_01");
};
FUNC VOID Rtn_Start_941()
{	
	TA_Cook_Stove		(05,00,10,00, "NW_FARM2_HOUSE_IN_04");
    TA_Sit_Bench		(10,00,12,00, "NW_FARM2_BENCH_02");
   	TA_Cook_Stove		(12,00,20,55, "NW_FARM2_HOUSE_IN_04");
    TA_Roast_Scavenger	(20,55,23,59, "NW_FARM2_BBQ");
    TA_Sleep			(23,59,05,00, "NW_FARM2_HOUSE_IN_02");
};
