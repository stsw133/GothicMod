///******************************************************************************************
instance BAU_940_Akil (Npc_Default)
{
	/// ------ General ------
	name								=	"Akil";
	guild								=	GIL_OUT;
	id									=	940;
	voice								=	13;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_NormalBart_Grim, Teeth_Normal, ItAr_BAU_H_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_940;
};

func void Rtn_PreStart_940()
{
	TA_Smalltalk	(08,00, 22,00, "NW_FARM2_PATH_02");
	TA_Smalltalk	(22,00, 08,00, "NW_FARM2_PATH_02");
};
func void Rtn_Start_940()
{
	TA_Sit_Bench		(05,00, 10,00, "NW_FARM2_BENCH_02");
	TA_Stand_Guarding	(10,00, 12,00, "NW_FARM2_PATH_01_B");
	TA_Sit_Bench		(12,00, 14,00, "NW_FARM2_BENCH_02");
	TA_Stand_Guarding	(14,00, 16,00, "NW_FARM2_FIELD_01");
	TA_Sit_Bench		(16,00, 21,00, "NW_FARM2_BENCH_02");
	TA_Sit_Bench		(21,00, 00,00, "NW_FARM2_OUT_06");
	TA_Sleep			(00,00, 05,00, "NW_FARM2_HOUSE_IN_02");
};
