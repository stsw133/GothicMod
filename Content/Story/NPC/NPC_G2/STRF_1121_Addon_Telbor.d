//******************************************************************************************
instance STRF_1121_Addon_Telbor (Npc_Default)
{
	// ------ General ------
	name								=	"Telbor";
	guild 								=	GIL_STRF;
	id 									=	1121;
	voice 								=	12;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+0, BodySkin_B, "Hum_Head_FatBald", Face_Normal03, 0, -1);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1121;
};

FUNC VOID Rtn_Start_1121()
{
	TA_Pick_Ore	(08,00,23,00, "ADW_MINE_LAGER_SIDE_PICK_02");
	TA_Pick_Ore	(23,00,08,00, "ADW_MINE_LAGER_SIDE_PICK_02");
};
FUNC VOID Rtn_Flucht_1121()
{
	TA_RunToWP	(08,00,23,00, "ADW_BL_HOEHLE_03");
	TA_RunToWP	(23,00,08,00, "ADW_BL_HOEHLE_03");
};
