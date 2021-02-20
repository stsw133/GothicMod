//******************************************************************************************
instance BAU_950_Lobart (Npc_Default)
{
	// ------ General ------
	name								=	"Lobart";
	guild 								=	GIL_OUT;
	id 									=	950;
	voice 								=	5;
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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal34, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_950;
};

FUNC VOID Rtn_Start_950()
{	
	TA_Stand_Guarding	(07,30,23,00, "NW_FARM1_LOBART");
   	TA_Sleep			(23,00,07,30, "NW_FARM1_INHOUSE_BED_01");
};
FUNC VOID Rtn_ObesessionRitual_950()
{	
	TA_Stand_Guarding	(07,30,23,00, "NW_FARM1_OUT_05");
   	TA_Stand_Guarding	(23,00,07,30, "NW_FARM1_OUT_05");
};
