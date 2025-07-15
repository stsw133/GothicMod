///******************************************************************************************
instance Mil_321_Rangar (Npc_Default)
{
	/// ------ General ------
	name								=	"Rangar";
	guild								=	GIL_MIL;
	id									=	321;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Mil_Sword);
	CreateInvItem (self, ItKe_City_Tower_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Tough_Skip, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_321;
};

func void Rtn_Start_321()
{
	TA_Stand_Drinking	(08,00, 20,00, "NW_CITY_BEER_06");
	TA_Stand_Drinking	(20,00, 08,00, "NW_CITY_BEER_06");
};
func void Rtn_PrePalCampKlau_321()
{
	TA_Sit_Bench	(03,00, 24,00, "NW_CITY_WAY_TO_SHIP_03");
	TA_Sit_Bench	(24,00, 03,00, "NW_CITY_WAY_TO_SHIP_03");
};
func void Rtn_PalCampKlau_321()
{
	TA_Stand_Drinking	(04,00, 23,00, "NW_CITY_BEER_06");
	TA_Pick_FP			(23,00, 04,00, "NW_CITY_PALCAMP_15");
};
