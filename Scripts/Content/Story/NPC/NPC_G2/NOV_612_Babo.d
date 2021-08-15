///******************************************************************************************
instance NOV_612_Babo (Npc_Default)
{
	/// ------ General ------
	name								=	"Babo";
	guild 								=	GIL_NOV;
	id 									=	612;
	voice 								=	3;
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

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_Normal18, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_612;
};

func void Rtn_Start_612()
{
	TA_Stand_Sweeping	(08,00,14,00, "NW_MONASTERY_CORRIDOR_10");
	TA_Pray_Innos_FP	(14,00,15,00, "NW_MONASTERY_CHURCH_03");
    TA_Stand_Sweeping	(15,00,23,30, "NW_MONASTERY_CORRIDOR_10");
    TA_Sleep			(23,30,08,00, "NW_MONASTERY_NOVICE04_05");
};
func void Rtn_Train_612()
{
    TA_Sleep			(23,30,05,00, "NW_MONASTERY_NOVICE04_05");
	TA_Practice_Sword	(05,00,07,00, "NW_MONASTERY_TRAIN_02");
	TA_Stand_Sweeping	(07,00,14,00, "NW_MONASTERY_CORRIDOR_10");
	TA_Pray_Innos_FP	(14,00,15,00, "NW_MONASTERY_CHURCH_03");
    TA_Stand_Sweeping	(15,00,23,30, "NW_MONASTERY_CORRIDOR_10");
};
func void Rtn_Fegen_612()
{
	TA_Stand_Sweeping	(08,00,23,30, "NW_MONASTERY_NOVICE04_02");
    TA_Stand_Sweeping	(23,30,08,00, "NW_MONASTERY_NOVICE04_02");
};
func void Rtn_Favour_612()
{
	TA_Rake_FP	(08,00,23,30, "NW_MONASTERY_HERB_05");
    TA_Sleep	(23,30,08,00, "NW_MONASTERY_NOVICE04_05");
};
