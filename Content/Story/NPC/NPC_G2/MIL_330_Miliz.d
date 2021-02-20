//******************************************************************************************
instance Mil_330_Miliz (Npc_Default)
{
	// ------ General ------
	name								=	Name_Miliz;
	guild 								=	GIL_MIL;
	id 									=	330;
	voice 								=	7;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Mordrag, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_330;
};

FUNC VOID Rtn_Start_330()
{
	TA_Practice_Sword	(07,00,21,01, "NW_CITY_HABOUR_KASERN_CENTRE_03");
   	TA_Smalltalk		(21,01,00,00, "NW_CITY_KASERN_BARRACK02_02");
   	TA_Sleep			(00,00,07,00, "NW_CITY_BARRACK01_BED_06");
};
