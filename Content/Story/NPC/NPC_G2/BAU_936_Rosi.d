///******************************************************************************************
instance BAU_936_Rosi (Npc_Default)
{
	/// ------ General ------
	name								=	"Rosi";
	guild 								=	GIL_BAU;
	id 									=	936;
	voice 								=	17;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe6", FaceBabe_Normal10, Teeth_Pretty, ITAR_WD_L_04);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_936;
};

func void Rtn_Start_936()
{
	TA_Cook_Stove	(08,00,22,00, "NW_FARM4_ROSI");
	TA_Cook_Stove	(22,00,08,00, "NW_FARM4_ROSI");
//	TA_Sleep		(22,00,08,00, "NW_FARM4_IN_BED");
};
func void Rtn_FleeDMT_936()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_FLEEDMT_KAP3");
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_FLEEDMT_KAP3");
};
func void Rtn_FleeFromSekob_936()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_TAVERNE_TROLLAREA_14");
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_TAVERNE_TROLLAREA_14");
};
func void Rtn_FollowCity_936()
{
	TA_Follow_Player	(08,00,22,00, "CITY2");
    TA_Follow_Player	(22,00,08,00, "CITY2");
};
func void Rtn_FollowBigfarm_936()
{
	TA_Follow_Player	(08,00,22,00, "NW_BIGFARM_KITCHEN_02");
    TA_Follow_Player	(22,00,08,00, "NW_BIGFARM_KITCHEN_02");
};
func void Rtn_FollowKloster_936()
{
	TA_Follow_Player	(08,00,22,00, "KLOSTER");
    TA_Follow_Player	(22,00,08,00, "KLOSTER");
};
func void Rtn_City_936()
{
	TA_Sit_Bench	(08,00,22,00, "NW_CITY_MERCHANT_PATH_25");
    TA_Sit_Bench	(22,00,08,00, "NW_CITY_MERCHANT_PATH_25");
};
func void Rtn_Bigfarm_936()
{
	TA_Sit_Chair	(08,00,22,00, "NW_BIGFARM_KITCHEN_02");
    TA_Sit_Chair	(22,00,08,00, "NW_BIGFARM_KITCHEN_02");
};
func void Rtn_Kloster_936()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_MONASTERY_SHEEP_01");
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_MONASTERY_SHEEP_01");
};
