///******************************************************************************************
instance Pal_231_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Ritter;
	guild 								=	GIL_PAL;
	id 									=	231;
	voice 								=	12;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal46, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_231;
};

func void Rtn_Start_231()
{
	TA_Practice_Sword	(08,00,23,00, "NW_CITY_PALCAMP_10");
    TA_Smalltalk		(23,00,08,00, "NW_CITY_PALCAMP_14");
};
func void Rtn_ShipFree_231()
{
	TA_Stand_WP	(08,00,23,00, "NW_CITY_UPTOWNPARADE_11");
    TA_Stand_WP	(23,00,08,00, "NW_CITY_UPTOWNPARADE_11");
};
