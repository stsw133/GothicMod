//******************************************************************************************
instance BDT_1096_Addon_Lennar (Npc_Default)
{
	// ------ General ------
	name								=	"Lennar";
	guild 								=	GIL_BDT;
	id 									=	1096;
	voice 								=	1;
	flags      							=	0;
	npctype								=	NPCTYPE_BL_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMw_Nagelknueppel);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal27, 0, ITAR_Bandit);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_1096;
};

FUNC VOID Rtn_Start_1096()
{
	TA_Stand_Drinking	(01,50,19,30, "BL_DOWN_RING_03");	
	TA_Roast_Scavenger	(19,30,01,50, "BL_DOWN_RING_ROAST");
};
FUNC VOID Rtn_Ruhe_1096()
{
	TA_Stand_Drinking	(10,00,20,00, "ADW_MINE_22");
	TA_Stand_Drinking	(20,00,10,00, "ADW_MINE_22");
};
FUNC VOID Rtn_Mine_1096()
{
	TA_Pick_Ore	(10,00,20,00, "ADW_MINE_PICK_09");
	TA_Pick_Ore	(20,00,10,00, "ADW_MINE_PICK_09");
};
