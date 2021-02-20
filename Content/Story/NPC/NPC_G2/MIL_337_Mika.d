//******************************************************************************************
instance Mil_337_Mika (Npc_Default)
{
	// ------ General ------
	name								=	"Mika";
	guild 								=	GIL_OUT;
	id 									=	337;
	voice 								=	12;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);
	CreateInvItems (self, ItPo_Health_01, 4);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_FatBald", Face_Normal04, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_337;
};

FUNC VOID Rtn_Start_337()
{
	TA_Stand_Guarding	(08,00,22,00, "NW_CITY_TO_FOREST_01");
    TA_Stand_Guarding	(22,00,08,00, "NW_CITY_TO_FOREST_01");
};
FUNC VOID Rtn_Akil_337()
{
	TA_RunToWP	(06,00,18,00, "NW_FARM2_PATH_03");
	TA_RunToWP	(18,00,06,00, "NW_FARM2_PATH_03");
};
