///******************************************************************************************
instance Pal_207_Girion (Npc_Default)
{
	/// ------ General ------
	name								=	"Girion";
	guild								=	GIL_PAL;
	id									=	207;
	voice								=	8;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 55);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1H_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_N_Lefty, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_207;
};

func void Rtn_Start_207()
{
	TA_Practice_Sword		(06,00, 07,03, "NW_CITY_GIRION");
	TA_Stand_ArmsCrossed	(07,03, 19,00, "NW_CITY_GIRION");
	TA_Sit_Throne			(19,00, 22,59, "NW_CITY_UPTOWN_HUT_03_SIT");
	TA_Sleep				(22,59, 06,00, "NW_CITY_LEOMAR_BED_02");
};
func void Rtn_WaitForShip_207()
{
	TA_Stand_WP	(08,00, 23,00, "NW_CITY_WAY_TO_SHIP_25");
	TA_Stand_WP	(23,00, 08,00, "NW_CITY_WAY_TO_SHIP_25");
};
func void Rtn_Ship_207()
{
	TA_Sit_Bench	(08,00, 23,00, "SHIP_DECK_18");
	TA_Sit_Bench	(23,00, 08,00, "SHIP_DECK_18");
};
