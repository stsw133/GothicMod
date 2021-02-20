//******************************************************************************************
instance Pal_223_Schiffswache (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Schiffswache;
	guild 								=	GIL_PAL;
	id 									=	223;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal29, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_223;
};

FUNC VOID Rtn_Start_223()
{
	TA_Stand_Guarding	(08,00,23,00, "SHIP_DECK_37");
	TA_Stand_Guarding	(23,00,08,00, "SHIP_DECK_37");
};
FUNC VOID Rtn_ShipFree_223()
{
	TA_Stand_WP	(08,00,23,00, "NW_CITY_UPTOWNPARADE_12");
	TA_Stand_WP	(23,00,08,00, "NW_CITY_UPTOWNPARADE_12");
};
