//******************************************************************************************
INSTANCE NONE_110_Urshak (NPC_Default)
{
	// ------ General ------
	name								=	"Ur-Shak";
	guild 								=	GIL_FRIENDLY_ORC;
	aivar[AIV_Race]						= 	RACE_Orc;
	id 									=	110;
	voice 								=	18;
	flags	 							=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetProtection (self, 100);
	B_SetFightSkills (self, FightTalent_Medium);

	// ------ FT ------
	fight_tactic						=	FAI_ORC;

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_ORC, MALE, 0, DEFAULT, "Orc_Head_Shaman", 52, DEFAULT, ITAR_Orc_Shaman);
	Mdl_SetModelFatness	(self, 0);

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_110;
};

FUNC VOID Rtn_PreStart_110()
{
	TA_Stand_WP	(08,00,22,00, "OW_PATH_340");
    TA_Stand_WP	(22,00,08,00, "OW_PATH_340");
};
FUNC VOID Rtn_Start_110()
{
	TA_Stand_WP	(08,00,22,00, "OW_HOSHPAK_04");
    TA_Stand_WP	(22,00,08,00, "OW_HOSHPAK_04");
};
