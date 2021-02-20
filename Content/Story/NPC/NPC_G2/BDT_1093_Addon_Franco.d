//******************************************************************************************
instance BDT_1093_Addon_Franco (Npc_Default)
{
	// ------ General ------
	name								=	"Franko";
	guild 								=	GIL_BDT;
	id 									=	1093;
	voice 								=	8;
	flags      							=	0;
	npctype								=	NPCTYPE_BL_MAIN;

	// ------ Aivars ------
	AIVAR[AIV_StoryBandit]				=	true;
	aivar[AIV_NewsOverride]				=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ItMi_GoldNugget, 7);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Bald", Face_Normal01, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_1093;
};

FUNC VOID Rtn_Start_1093()
{
   TA_Stand_Guarding	(06,00,20,00, "ADW_PATH_TO_BL_02");
   TA_Stand_Guarding	(20,00,00,00, "BANDIT_FIGHT");
   TA_Stand_Eating		(00,00,03,00, "BANDIT_FIGHT");
   TA_Stand_Drinking	(03,00,06,00, "BANDIT_FIGHT");
};
