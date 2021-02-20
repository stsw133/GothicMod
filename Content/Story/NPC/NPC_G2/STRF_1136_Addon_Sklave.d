//******************************************************************************************
instance STRF_1136_Addon_Sklave (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Sklave;
	guild 								=	GIL_STRF;
	id 									=	1136;
	voice 								=	3;
	flags      							=	0;
	npctype								=	NPCTYPE_BL_AMBIENT;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Weak);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Psionic", Face_Normal57, 0, -1);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1136;
};

FUNC VOID Rtn_Start_1136()
{
	TA_Pick_Ore	(08,00,23,00, "ADW_MINE_PICK_05");
	TA_Pick_Ore	(23,00,08,00, "ADW_MINE_PICK_05");
};
