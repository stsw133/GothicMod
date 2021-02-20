//******************************************************************************************
instance VLK_4201_Wirt (Npc_Default)
{
	// ------ General ------
	name								=	"W³aœciciel gospody";
	guild 								=	GIL_VLK;
	id 									=	4201;
	voice 								=	14;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal50, 0, ITAR_BARKEEPER);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4201;
};

FUNC VOID Rtn_Start_4201()
{
	TA_Stand_Guarding	(04,35,21,00, "NW_CITY_BEER_02");
	TA_Pee				(21,00,21,05, "NW_CITY_KASERN_PLACE_01");
    TA_Stand_Drinking	(21,05,04,30, "NW_CITY_BEER_02");
    TA_Pee				(04,30,04,35, "NW_CITY_KASERN_PLACE_01");
};
