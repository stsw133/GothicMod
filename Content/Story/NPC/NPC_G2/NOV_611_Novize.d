///******************************************************************************************
instance NOV_611_Novize (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Novize;
	guild 								=	GIL_NOV;
	id 									=	611;
	voice 								=	3;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Nov_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal12, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_611;
};

func void Rtn_Start_611()
{
	TA_Pray_Innos_FP	(08,00,09,00, "NW_MONASTERY_CHURCH_03");
    TA_Smalltalk		(09,00,23,05, "NW_MONASTERY_GRASS_01");
    TA_Sleep			(23,05,08,00, "NW_MONASTERY_NOVICE02_04");
};
func void Rtn_Fegen_611()
{
	TA_Stand_Sweeping	(08,00,23,05, "NW_MONASTERY_NOVICE01_02");
    TA_Stand_Sweeping	(23,05,08,00, "NW_MONASTERY_NOVICE01_02");
};
