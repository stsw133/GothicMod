//******************************************************************************************
instance BDT_10024_Addon_Garaz (Npc_Default)
{
	// ------ General ------
	name								=	"Garaz";
	guild 								=	GIL_BDT;
	id 									=	10024;
	voice 								=	8;
	flags      							=	0;
	npctype								=	NPCTYPE_BL_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Axe);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal23, 0, ITAR_RVN_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_10024;
};

FUNC VOID Rtn_Start_10024()
{
	TA_Stand_Guarding	(06,00,12,00, "ADW_MINE_TO_MC_04");
	TA_Stand_Guarding	(12,00,06,00, "ADW_MINE_TO_MC_04");
};
FUNC VOID Rtn_Attack_10024()
{
	TA_Guide_Player	(06,00,12,00, "ADW_MINE_MC_07");
	TA_Guide_Player	(12,00,06,00, "ADW_MINE_MC_07");
};
FUNC VOID Rtn_Gold_10024()
{
	TA_Stand_Guarding	(06,00,12,00, "ADW_MINE_MC_GARAZ");
	TA_Stand_Guarding	(12,00,06,00, "ADW_MINE_MC_GARAZ");
};
