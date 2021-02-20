//******************************************************************************************
INSTANCE NOV_602_Ulf (Npc_Default)
{
	// ------ General ------
	name								=	"Ulf";
	guild 								=	GIL_NOV;
	id 									=	602;
	voice 								=	3;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 12);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Nov_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal55, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_602;
};

FUNC VOID Rtn_Start_602()
{
	TA_Stand_Drinking	(08,00,20,00, "NW_CITY_BEER_04");
   	TA_Stand_Drinking	(20,00,08,00, "NW_CITY_BEER_04");
};
FUNC VOID Rtn_Suche_602()
{
	TA_Stand_Guarding	(08,00,20,00, "NW_TROLLAREA_PATH_42");
   	TA_Stand_Guarding	(20,00,08,00, "NW_TROLLAREA_PATH_42");
};
FUNC VOID Rtn_Wait_602()
{
	TA_Stand_Guarding	(08,00,20,00, "NW_TROLLAREA_PATH_22");
   	TA_Stand_Guarding	(20,00,08,00, "NW_TROLLAREA_PATH_22");
};
FUNC VOID Rtn_Follow_602()
{
	TA_Follow_Player	(08,00,20,00, "NW_TROLLAREA_PATH_13");
   	TA_Follow_Player	(20,00,08,00, "NW_TROLLAREA_PATH_13");
};
