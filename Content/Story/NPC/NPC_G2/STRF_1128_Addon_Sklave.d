//******************************************************************************************
instance STRF_1128_Addon_Sklave (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Sklave;
	guild 								=	GIL_STRF;
	id 									=	1128;
	voice 								=	3;
	flags       						=	0;
	npctype								=	NPCTYPE_BL_AMBIENT;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+0, BodySkin_B, "Hum_Head_Thief", Face_Normal06, 0, -1);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1128;
};

FUNC VOID Rtn_Start_1128()
{
	TA_Pick_Ore	(08,00,23,00, "ADW_MINE_19");
	TA_Pick_Ore	(23,00,08,00, "ADW_MINE_19");
};
FUNC VOID Rtn_Flucht_1128()
{
	TA_RunToWP	(08,00,23,00, "ADW_BL_HOEHLE_02");
	TA_RunToWP	(23,00,08,00, "ADW_BL_HOEHLE_02");
};
