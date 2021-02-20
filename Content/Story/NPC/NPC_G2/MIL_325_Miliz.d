//******************************************************************************************
instance Mil_325_Miliz (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Miliz;
	guild 								=	GIL_MIL;
	id 									=	325;
	voice 								=	12;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_NewsOverride]				=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_FatBald", Face_Normal02, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_325;
};

FUNC VOID Rtn_Start_325()
{
	TA_Guard_Passage	(08,00,23,00, "NW_CITY_MERCHANT_PATH_02");
    TA_Guard_Passage	(23,00,08,00, "NW_CITY_MERCHANT_PATH_02");
};
