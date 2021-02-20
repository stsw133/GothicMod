//******************************************************************************************
instance STRF_1130_Addon_Sklave (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Sklave;
	guild 								=	GIL_STRF;
	id 									=	1130;
	voice 								=	3;
	flags       						=	0;
	npctype								=	NPCTYPE_BL_AMBIENT;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Weak);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+0, BodySkin_L, "Hum_Head_Psionic", Face_Normal04, 0, -1);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1130;
};

FUNC VOID Rtn_Start_1130()
{
	TA_Pick_Ore	(08,00,23,00, "ADW_MINE_SLAVE_01");
	TA_Pick_Ore	(23,00,08,00, "ADW_MINE_SLAVE_01");
};
FUNC VOID Rtn_Flucht_1130()
{
	TA_RunToWP	(08,00,23,00, "ADW_BL_HOEHLE_02");
	TA_RunToWP	(23,00,08,00, "ADW_BL_HOEHLE_02");
};
