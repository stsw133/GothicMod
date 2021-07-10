///******************************************************************************************
instance BAU_931_Till (Npc_Default)
{
	/// ------ General ------
	name								=	"Till";
	guild 								=	GIL_OUT;
	id 									=	931;
	voice 								=	3;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_Bald", Face_Normal15, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_931;
};

func void Rtn_PreStart_931()
{	
	TA_Stand_Guarding	(08,00,22,00, "NW_FARM4_TILL");
    TA_Stand_Guarding	(22,00,08,00, "NW_FARM4_TILL");
};
func void Rtn_Start_931()
{	
	TA_Saw			(08,00,22,00, "NW_FARM4_TILL");
    TA_Sit_Throne	(22,00,08,00, "NW_FARM4_SEKOB");
};
func void Rtn_FleeDMT_931()
{	
	TA_Stand_Guarding	(08,00,22,00, "NW_FLEEDMT_KAP3");
    TA_Stand_Guarding	(22,00,08,00, "NW_FLEEDMT_KAP3");
};
func void Rtn_FleeFromSekob_931()
{	
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_TAVERNE_TROLLAREA_14");
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_TAVERNE_TROLLAREA_14");
};
func void Rtn_FollowCity_931()
{	
	TA_Follow_Player	(08,00,22,00, "CITY2");
    TA_Follow_Player	(22,00,08,00, "CITY2");
};
func void Rtn_FollowBigfarm_931()
{	
	TA_Follow_Player	(08,00,22,00, "NW_BIGFARM_KITCHEN_02"); 
    TA_Follow_Player	(22,00,08,00, "NW_BIGFARM_KITCHEN_02");
};
func void Rtn_FollowKloster_931()
{	
	TA_Follow_Player	(08,00,22,00, "KLOSTER");
    TA_Follow_Player	(22,00,08,00, "KLOSTER");
};
func void Rtn_City_931()
{	
	TA_Stand_WP	(08,00,22,00, "NW_CITY_MERCHANT_PATH_25");  
    TA_Stand_WP	(22,00,08,00, "NW_CITY_MERCHANT_PATH_25");
};
func void Rtn_Bigfarm_931()
{	
	TA_Sit_Chair	(08,00,22,00, "NW_BIGFARM_KITCHEN_02"); 
    TA_Sit_Chair	(22,00,08,00, "NW_BIGFARM_KITCHEN_02");
};
func void Rtn_Kloster_931()
{	
	TA_Pick_FP	(08,00,22,00, "NW_MONASTERY_HERB_02");	
    TA_Pick_FP	(22,00,08,00, "NW_MONASTERY_HERB_02");
};
