///******************************************************************************************
instance Pal_221_Schiffswache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Schiffswache;
	guild 								=	GIL_PAL;
	id 									=	221;
	voice 								=	9;
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
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_Normal33, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_221;
};

func void Rtn_Start_221()
{
	TA_Stand_Guarding	(08,00,23,00, "SHIP");
	TA_Stand_Guarding	(23,00,08,00, "SHIP");
};
func void Rtn_ShipFree_221()
{
	TA_Stand_WP	(08,00,23,00, "NW_CITY_UPTOWNPARADE_02");
	TA_Stand_WP	(23,00,08,00, "NW_CITY_UPTOWNPARADE_02");
};
