//******************************************************************************************
instance BDT_10009_Addon_Bandit (Npc_Default)
{
	// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	10009;
	voice 								=	13;
	flags      							=	0;
	npctype								=	NPCTYPE_BL_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_Nagelknueppel);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_Bald", Face_Normal15, 0, ITAR_Bandit);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_10009;
};

FUNC VOID Rtn_Start_10009()
{
	TA_Smalltalk	(08,00,10,00, "BL_UP_RING_04");
	TA_Smalltalk	(10,00,08,00, "BL_UP_RING_04");
};
