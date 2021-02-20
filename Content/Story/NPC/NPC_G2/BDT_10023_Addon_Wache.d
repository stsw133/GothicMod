//******************************************************************************************
instance BDT_10023_Addon_Wache (Npc_Default)
{
	// ------ General ------
	name								=	"Stra¿nik niewolników";
	guild 								=	GIL_BDT;
	id 									=	10023;
	voice 								=	11;
	flags      							=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Bald", Face_Normal01, 0, ITAR_RVN_M);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_10023;
};

FUNC VOID Rtn_Start_10023()
{
	TA_Stand_Guarding	(06,00,12,00, "ADW_MINE_LAGER_01");
	TA_Stand_Guarding	(12,00,06,00, "ADW_MINE_LAGER_01");
};
FUNC VOID Rtn_SOUP_10023()
{
	TA_Stand_Eating	(06,00,12,00, "ADW_MINE_27");
	TA_Stand_Eating	(12,00,06,00, "ADW_MINE_27");
};
