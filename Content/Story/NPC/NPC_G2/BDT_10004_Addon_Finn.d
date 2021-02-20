//******************************************************************************************
instance BDT_10004_Addon_Finn (Npc_Default)
{
	// ------ General ------
	name								=	"Finn";
	guild 								=	GIL_BDT;
	id 									=	10004;
	voice 								=	7;
	flags      							=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMW_2h_Axe_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal29, 0, ITAR_Bandit);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_10004;
};

FUNC VOID Rtn_Start_10004()
{
  	TA_Stand_Eating	(10,00,20,00, "BL_DOWN_RING_04");
    TA_Smalltalk	(20,00,02,00, "BL_DOWN_RING_02");
    TA_Sit_Bench	(02,00,10,00, "BL_DOWN_04_BENCH");
};
FUNC VOID Rtn_Mine_10004()
{
	TA_Pick_Ore	(10,00,20,00, "ADW_MINE_PICK_06");
	TA_Pick_Ore	(20,00,10,00, "ADW_MINE_PICK_06");
};
