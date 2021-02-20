//******************************************************************************************
instance STRF_1118_Addon_Patrick (Npc_Default)
{
	// ------ General ------
	name								=	"Patrick";
	guild 								=	GIL_STRF;
	id 									=	1118;
	voice 								=	7;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_NoFightParker] 			=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NewsOverride]				=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+1, BodySkin_L, "Hum_Head_Bald", Face_Normal07, 0, -1);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1118;
};

FUNC VOID Rtn_Start_1118()
{
	TA_Pick_Ore	(08,00,23,00, "ADW_MINE_LAGER_05");
	TA_Pick_Ore	(23,00,08,00, "ADW_MINE_LAGER_05");
};
FUNC VOID Rtn_Flucht_1118()
{
	TA_RunToWP	(08,00,23,00, "ADW_BL_HOEHLE_04");
	TA_RunToWP	(23,00,08,00, "ADW_BL_HOEHLE_04");
};
