//******************************************************************************************
instance None_101_Mario (Npc_Default)
{
	// ------ General ------
	name								=	"Mario";
	guild 								=	GIL_NONE;
	id 									=	101;
	voice 								=	7;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Master-5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_SLD_SWORD);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_FatBald", Face_Normal04, 0, ITAR_MIL_H);
	Mdl_SetModelFatness	(self, 1.2);
	Mdl_ApplyOverlayMds	(self, "Humans_MILITIA.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_101;
};

FUNC VOID Rtn_Start_101()
{
	TA_Stand_Drinking	(08,00,21,00, "NW_CITY_HABOUR_TAVERN01_STAND_01");
   	TA_Stand_Drinking	(21,00,08,00, "NW_CITY_HABOUR_TAVERN01_STAND_01");
};
FUNC VOID Rtn_WaitForShip_101()
{
	TA_Stand_Drinking	(08,00,19,00, "NW_WAITFOR_SHIP_01");
	TA_Stand_Drinking	(19,00,08,00, "NW_WAITFOR_SHIP_01");
};
FUNC VOID Rtn_ShipOff_101()
{
	TA_Stand_Drinking	(08,00,21,00, "NW_CITY_HABOUR_TAVERN01_STAND_01");
   	TA_Stand_Drinking	(21,00,08,00, "NW_CITY_HABOUR_TAVERN01_STAND_01");
};
FUNC VOID Rtn_Ship_101()
{
	TA_Sit_Bench	(08,00,23,00, "SHIP_DECK_25");
	TA_Sit_Bench	(23,00,08,00, "SHIP_DECK_25");
};
