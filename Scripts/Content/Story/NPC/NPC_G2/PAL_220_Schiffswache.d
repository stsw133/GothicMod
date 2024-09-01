///******************************************************************************************
instance Pal_220_Schiffswache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Schiffswache;
	guild								=	GIL_PAL;
	id									=	220;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_NormalBart05, Teeth_Normal, ItAr_PAL_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_220;
};

func void Rtn_Start_220()
{
	TA_Stand_Guarding	(08,00, 23,00, "SHIP_DECK_05");
	TA_Stand_Guarding	(23,00, 08,00, "SHIP_DECK_05");
};
func void Rtn_ShipFree_220()
{
	TA_Stand_WP	(08,00, 23,00, "NW_CITY_UPTOWNPARADE_01");
	TA_Stand_WP	(23,00, 08,00, "NW_CITY_UPTOWNPARADE_01");
};
