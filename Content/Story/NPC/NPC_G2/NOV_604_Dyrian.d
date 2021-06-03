///******************************************************************************************
instance NOV_604_Dyrian (Npc_Default)
{
	/// ------ General ------
	name								=	"Dyrian";
	guild 								=	GIL_NOV;
	id 									=	604;
	voice 								=	13;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Nov_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItSc_Sleep);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_Thief", Face_Normal02, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_604;
};

func void Rtn_Start_604()
{
	TA_Stand_WP			(08,00,10,00, "NW_MONASTERY_GRASS_04");
	TA_Pray_Innos_FP	(10,00,11,00, "NW_MONASTERY_CHURCH_03");
    TA_Stand_WP			(11,00,23,30, "NW_MONASTERY_GRASS_04");
    TA_Sleep			(23,30,08,00, "NW_MONASTERY_NOVICE01_04");
};
func void Rtn_Favour_604()
{
	TA_Rake_FP	(08,00,23,30, "NW_MONASTERY_HERB_05");
    TA_Sleep	(23,30,08,00, "NW_MONASTERY_NOVICE01_04");
};
func void Rtn_NoFavour_604()
{
	TA_Stand_Drinking	(08,00,23,30, "TAVERNE");
    TA_Stand_Drinking	(23,30,08,00, "TAVERNE");
};
