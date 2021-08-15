///******************************************************************************************
instance BDT_1072_Addon_Logan (Npc_Default)
{
	/// ------ General ------
	name								=	"Logan";
	guild 								=	GIL_BDT;
	id 									=	1072;
	voice 								=	10;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_NewsOverride]				=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Bow_M_02);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_Cipher, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, -0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1072;
};

func void Rtn_Start_1072()
{
	TA_Stand_Guarding	(09,00,21,00, "ADW_BANDIT_VP3_03");
	TA_Stand_Guarding	(21,00,09,00, "ADW_BANDIT_VP3_03");
};
func void Rtn_Jagd_1072()
{
	TA_Stand_Guarding	(09,00,21,00, "ADW_BANDIT_VP3_05");
	TA_Stand_Guarding	(21,00,09,00, "ADW_BANDIT_VP3_05");
};
func void Rtn_Lager_1072()
{
	TA_Stand_Drinking	(09,00,21,00, "BL_INN_03_C");
	TA_Stand_Drinking	(21,00,09,00, "BL_INN_03_C");
};
func void Rtn_Mine_1072()
{
	TA_Pick_Ore	(10,00,20,00, "ADW_MINE_PICK_08");
	TA_Pick_Ore	(20,00,10,00, "ADW_MINE_PICK_08");
};
