//******************************************************************************************
instance Pal_220_Schiffswache (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Schiffswache;
	guild 								=	GIL_PAL;
	id 									=	220;
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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal32, 0, ITAR_PAL_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_220;
};

FUNC VOID Rtn_Start_220()
{
	TA_Stand_Guarding	(08,00,23,00, "SHIP_DECK_05");
	TA_Stand_Guarding	(23,00,08,00, "SHIP_DECK_05");
};
FUNC VOID Rtn_ShipFree_220()
{
	TA_Stand_WP	(08,00,23,00, "NW_CITY_UPTOWNPARADE_01");
	TA_Stand_WP	(23,00,08,00, "NW_CITY_UPTOWNPARADE_01");
};
