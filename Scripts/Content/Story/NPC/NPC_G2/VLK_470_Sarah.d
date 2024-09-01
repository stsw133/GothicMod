///******************************************************************************************
instance VLK_470_Sarah (Npc_Default)
{
	/// ------ General ------
	name								=	"Sara";
	guild								=	GIL_VLK;
	id									=	470;
	voice								=	16;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Sword);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe", FaceBabe_N_Syra, Teeth_Pretty, ItAr_Babe_VLK_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_470;
};

func void Rtn_Start_470()
{
	TA_Stand_ArmsCrossed	(05,15, 20,15, "NW_CITY_SARAH");
	TA_Sleep				(20,15, 05,15, "NW_CITY_HOTEL_BED_08");
};
func void Rtn_Knast_470()
{
	TA_Stand_ArmsCrossed	(08,00, 20,00, "NW_CITY_HABOUR_KASERN_RENGARU");
	TA_Stand_ArmsCrossed	(20,00, 08,00, "NW_CITY_HABOUR_KASERN_RENGARU");
};
func void Rtn_Tot_470()
{
	TA_Stand_ArmsCrossed	(05,15, 20,15, "TOT");
	TA_Sleep				(20,15, 05,15, "TOT");
};
