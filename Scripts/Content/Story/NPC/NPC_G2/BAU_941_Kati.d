///******************************************************************************************
instance BAU_941_Kati (Npc_Default)
{
	/// ------ General ------
	name								=	"Kati";
	guild								=	GIL_OUT;
	id									=	941;
	voice								=	16;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 15);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe8", FaceBabe_N_Lilo, Teeth_Pretty, ItAr_Babe_BAU_H_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_941;
};

func void Rtn_PreStart_941()
{
	TA_Stand_ArmsCrossed	(08,00, 22,00, "NW_FARM2_PATH_01");
	TA_Stand_ArmsCrossed	(22,00, 08,00, "NW_FARM2_PATH_01");
};
func void Rtn_Start_941()
{
	TA_Cook_Stove		(05,00, 10,00, "NW_FARM2_HOUSE_IN_04");
	TA_Sit_Bench		(10,00, 12,00, "NW_FARM2_BENCH_02");
	TA_Cook_Stove		(12,00, 20,55, "NW_FARM2_HOUSE_IN_04");
	TA_Roast_Scavenger	(20,55, 23,59, "NW_FARM2_BBQ");
	TA_Sleep			(23,59, 05,00, "NW_FARM2_HOUSE_IN_02");
};
