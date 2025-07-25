///******************************************************************************************
instance Pal_223_Schiffswache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Schiffswache;
	guild								=	GIL_PAL;
	id									=	223;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1H_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_NormalBart02, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_223;
};

func void Rtn_Start_223()
{
	TA_Stand_Guarding	(08,00, 23,00, "SHIP_DECK_37");
	TA_Stand_Guarding	(23,00, 08,00, "SHIP_DECK_37");
};
func void Rtn_ShipFree_223()
{
	TA_Stand_WP	(08,00, 23,00, "NW_CITY_UPTOWNPARADE_12");
	TA_Stand_WP	(23,00, 08,00, "NW_CITY_UPTOWNPARADE_12");
};
