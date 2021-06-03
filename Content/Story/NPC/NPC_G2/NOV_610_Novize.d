///******************************************************************************************
instance NOV_610_Novize (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Novize;
	guild 								=	GIL_NOV;
	id 									=	610;
	voice 								=	8;
	flags      							=	0;
	npctype								=	NPCTYPE_AMBIENT;

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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal13, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_610;
};

func void Rtn_Start_610()
{
	TA_Pick_FP			(08,00,13,00, "NW_MONASTERY_HERB_03");
	TA_Pray_Innos_FP	(13,00,14,00, "NW_MONASTERY_CHURCH_03");
	TA_Pick_FP			(14,00,22,50, "NW_MONASTERY_HERB_03");
    TA_Sleep			(22,50,08,00, "NW_MONASTERY_NOVICE04_06");
};
