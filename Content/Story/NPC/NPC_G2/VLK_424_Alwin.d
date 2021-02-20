//******************************************************************************************
instance Vlk_424_Alwin (Npc_Default)
{
	// ------ General ------
	name								=	"Alwin";
	guild 								=	GIL_VLK;
	id 									=	424;
	voice 								=	12;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_ToughGuy]					=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Axe);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_Bald", Face_Normal13, 0, ITAR_Scyther);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_424;
};

FUNC VOID Rtn_Start_424()
{
	TA_Sit_Bench	(08,00,22,00, "NW_CITY_PATH_HABOUR_18");
    TA_Sleep		(22,00,08,00, "NW_CITY_HABOUR_HUT_07_BED_01");
};
