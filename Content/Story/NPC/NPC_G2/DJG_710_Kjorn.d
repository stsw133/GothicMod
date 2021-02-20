//******************************************************************************************
instance DJG_710_Kjorn (Npc_Default)
{
	// ------ General ------
	name								=	"Kjorn";
	guild 								=	GIL_DJG;
	id 									=	710;
	voice 								=	6;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Strong-5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal10, 0, ITAR_DJG_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_710;
};

FUNC VOID Rtn_PreStart_710()
{
	TA_Smalltalk	(08,00,23,00, "OW_PATH_1_5_3A");
    TA_Smalltalk	(23,00,08,00, "OW_PATH_1_5_3A");
};
FUNC VOID Rtn_Start_710()
{
	TA_Sit_Bench	(08,00,23,00, "OW_DJG_VORPOSTEN_01");
    TA_Sit_Bench	(23,00,08,00, "OW_DJG_VORPOSTEN_01");
};
