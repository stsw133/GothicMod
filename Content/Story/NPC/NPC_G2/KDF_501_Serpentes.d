//******************************************************************************************
INSTANCE KDF_501_Serpentes (Npc_Default)
{
	// ------ General ------
	name								=	"Serpentes";
	guild 								=	GIL_KDF;
	id 									=	501;
	voice 								=	10;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_PYR;

	// ------ Aivars ------
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Psionic", Face_Normal01, 0, ITAR_Mag_A);
	Mdl_SetModelFatness	(self, -2);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_501;
};

FUNC VOID Rtn_Start_501()
{
	TA_Sit_Throne	(08,00,23,00, "NW_MONASTERY_THRONE_02");
    TA_Sit_Throne	(23,00,08,00, "NW_MONASTERY_THRONE_02");
};
