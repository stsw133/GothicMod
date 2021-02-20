//******************************************************************************************
INSTANCE NOV_605_Opolos (Npc_Default)
{
	// ------ General ------
	name								=	"Opolos";
	guild 								=	GIL_NOV;
	id 									=	605;
	voice 								=	12;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Nov_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Fighter", Face_Normal02, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_605;
};

FUNC VOID Rtn_Start_605()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_MONASTERY_SHEEP_05");
    TA_Stand_Guarding	(23,00,08,00, "NW_MONASTERY_SHEEP_05");
};
FUNC VOID Rtn_Favour_605()
{
	TA_Read_Bookstand	(08,00,23,00, "NW_MONASTERY_RUNEMAKER_07");
    TA_Read_Bookstand	(23,00,08,00, "NW_MONASTERY_RUNEMAKER_07");
};
