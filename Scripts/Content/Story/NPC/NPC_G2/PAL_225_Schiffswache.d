///******************************************************************************************
instance Pal_225_Schiffswache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Schiffswache;
	guild 								=	GIL_PAL;
	id 									=	225;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_Normal45, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_225;
};

func void Rtn_Start_225()
{
	TA_Stand_Guarding	(08,00,23,00, "SHIP_DECK_13");
	TA_Stand_Guarding	(23,00,08,00, "SHIP_DECK_13");
};
func void Rtn_ShipFree_225()
{
	TA_Stand_WP	(08,00,23,00, "NW_CITY_UPTOWNPARADE_06");
	TA_Stand_WP	(23,00,08,00, "NW_CITY_UPTOWNPARADE_06");
};
