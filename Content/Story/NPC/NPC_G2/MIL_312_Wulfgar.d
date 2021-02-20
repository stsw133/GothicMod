//******************************************************************************************
instance Mil_312_Wulfgar (Npc_Default)
{
	// ------ General ------
	name								=	"Wulfgar";
	guild 								=	GIL_MIL;
	id 									=	312;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal33, 0, ITAR_MIL_H);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_312;
};

FUNC VOID Rtn_PreStart_312()
{
	TA_Stand_ArmsCrossed	(06,55,21,00, "NW_CITY_HABOUR_KASERN_CENTRE_01");
    TA_Sit_Throne			(21,00,05,00, "NW_CITY_KASERN_BARRACK02_02");
   	TA_Practice_Sword		(05,00,06,55, "NW_CITY_HABOUR_KASERN_CENTRE_01");
};
FUNC VOID Rtn_Start_312()
{
	TA_Stand_ArmsCrossed	(06,55,21,00, "NW_CITY_HABOUR_KASERN_CENTRE_01");
    TA_Sit_Throne			(21,00,00,07, "NW_CITY_KASERN_BARRACK02_02");
   	TA_Smalltalk			(00,07,05,00, "NW_CITY_HABOUR_KASERN_OFFICE");
    TA_Practice_Sword		(05,00,06,55, "NW_CITY_HABOUR_KASERN_CENTRE_01");
};
