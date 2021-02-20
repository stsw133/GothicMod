//******************************************************************************************
instance BDT_1035_Fluechtling (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Fluechtling;
	guild 								=	GIL_OUT;
	id 									=	1035;
	voice 								=	7;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_SLD_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_FatBald", Face_Normal06, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_1035;
};

FUNC VOID Rtn_Start_1035()
{
	TA_Smalltalk	(08,00,23,00, "NW_BIGFARM_HOUSE_OUT_05");
    TA_Smalltalk	(23,00,08,00, "NW_BIGFARM_HOUSE_OUT_05");
};
