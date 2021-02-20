//******************************************************************************************
instance BAU_944_Ehnim (Npc_Default)
{
	// ------ General ------
	name								=	"Ehnim";
	guild 								=	GIL_OUT;
	id 									=	944;
	voice 								=	12;
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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_FatBald", Face_Normal09, 0, ITAR_Bau_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_944;
};

FUNC VOID Rtn_Start_944()
{	
	TA_Rake_FP		(05,00,12,00, "NW_FARM2_FIELD_03");
    TA_Sit_Campfire	(12,00,14,00, "NW_FARM2_FIELD_03_B");
    TA_Rake_FP		(14,00,21,00, "NW_FARM2_FIELD_03");
    TA_Sit_Campfire	(21,00,05,00, "NW_FARM2_OUT_03");
};
