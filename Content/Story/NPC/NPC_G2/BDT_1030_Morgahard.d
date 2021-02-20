//******************************************************************************************
instance BDT_1030_Morgahard (Npc_Default)
{
	// ------ General ------
	name								=	"Morgahard";
	guild 								=	GIL_OUT;
	id 									=	1030;
	voice 								=	7;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_SLD_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItWr_RichterKomproBrief_MIS);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Bartholo, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_1030;
};

FUNC VOID Rtn_Start_1030()
{
	TA_Smalltalk	(08,00,23,00, "NW_BIGFARM_HOUSE_OUT_05");
    TA_Smalltalk	(23,00,08,00, "NW_BIGFARM_HOUSE_OUT_05");
};
