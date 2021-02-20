//******************************************************************************************
instance BAU_945_Egill (Npc_Default)
{
	// ------ General ------
	name								=	"Egill";
	guild 								=	GIL_OUT;
	id 									=	945;
	voice 								=	8;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItPo_Health_03);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_Pony", Face_Normal09, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_945;
};

FUNC VOID Rtn_Start_945()
{	
	TA_Pick_FP			(05,00,21,00, "NW_FARM2_FIELD_02");
    TA_Stand_Drinking	(21,00,00,02, "NW_FARM2_OUT_10");
    TA_Sit_Bench		(00,02,05,00, "NW_FARM2_OUT_06");
};
