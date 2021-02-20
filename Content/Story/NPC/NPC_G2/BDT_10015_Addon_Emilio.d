//******************************************************************************************
instance BDT_10015_Addon_Emilio (Npc_Default)
{
	// ------ General ------
	name								=	"Emilio";
	guild 								=	GIL_BDT;
	id 									=	10015;
	voice 								=	10;
	flags      							=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Axe_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_Thief", Face_Normal10, 0, ITAR_Bandit);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_10015;
};

FUNC VOID Rtn_Start_10015()
{
	TA_Sit_Bench	(02,00,11,00,"BL_INN_01_BENCH");
	TA_Sit_Bench	(11,00,02,00,"BL_INN_01_BENCH");
};
FUNC VOID Rtn_Mine_10015()
{
	TA_Pick_Ore	(10,00,20,00,"ADW_MINE_09_PICK");
	TA_Pick_Ore	(20,00,10,00,"ADW_MINE_09_PICK");
};
