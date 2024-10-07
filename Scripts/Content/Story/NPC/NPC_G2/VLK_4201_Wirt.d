///******************************************************************************************
instance VLK_4201_Wirt (Npc_Default)
{
	/// ------ General ------
	name								=	"W³aœciciel gospody";
	guild								=	GIL_VLK;
	id									=	4201;
	voice								=	14;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_OldBald_Jeremiah, Teeth_Normal, ItAr_Barkeeper);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4201;
};

func void Rtn_Start_4201()
{
	TA_Stand_Guarding	(04,35, 21,00, "NW_CITY_BEER_02");
	TA_Pee				(21,00, 21,05, "NW_CITY_KASERN_PLACE_01");
	TA_Stand_Drinking	(21,05, 04,30, "NW_CITY_BEER_02");
	TA_Pee				(04,30, 04,35, "NW_CITY_KASERN_PLACE_01");
};
