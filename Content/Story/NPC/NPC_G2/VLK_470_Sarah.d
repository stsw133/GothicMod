//******************************************************************************************
instance VLK_470_Sarah (Npc_Default)
{
	// ------ General ------
	name								=	"Sara";
	guild 								=	GIL_VLK;
	id 									=	470;
	voice 								=	16;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Sword);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe", FaceBabe_Syra, Teeth_Pretty, ITAR_WD_M_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_470;
};

FUNC VOID Rtn_Start_470()
{
	TA_Stand_ArmsCrossed	(05,15,20,15, "NW_CITY_SARAH");
    TA_Sleep				(20,15,05,15, "NW_CITY_HOTEL_BED_08");
};
FUNC VOID Rtn_Knast_470()
{
	TA_Stand_ArmsCrossed	(08,00,20,00, "NW_CITY_HABOUR_KASERN_RENGARU");
    TA_Stand_ArmsCrossed	(20,00,08,00, "NW_CITY_HABOUR_KASERN_RENGARU");
};
FUNC VOID Rtn_Tot_470()
{
	TA_Stand_ArmsCrossed	(05,15,20,15, "TOT");
    TA_Sleep				(20,15,05,15, "TOT");
};
