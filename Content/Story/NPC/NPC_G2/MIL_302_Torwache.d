//******************************************************************************************
instance Mil_302_Torwache (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Torwache;
	guild 								=	GIL_MIL;
	id 									=	302;
	voice 								=	6;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Master-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal14, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_302;
};

FUNC VOID Rtn_Start_302()
{
	TA_Guard_Passage	(08,00,23,00, "NW_CITY_GUARDOFFICE_GUARD_01");
    TA_Guard_Passage	(23,00,08,00, "NW_CITY_GUARDOFFICE_GUARD_01");
};
