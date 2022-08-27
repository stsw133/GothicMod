///******************************************************************************************
instance VLK_426_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	426;
	voice 								=	17;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe8", FaceBabe_Normal09, Teeth_Pretty, ITAR_Babe_VLK_M_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_426;
};

func void Rtn_Start_426()
{
	TA_Stand_ArmsCrossed	(05,05,20,05, "NW_CITY_MERCHANT_PATH_15");
    TA_Smalltalk			(20,05,03,55, "NW_CITY_MERCHANT_TAVERN01_01");
    TA_Smalltalk			(03,55,05,05, "NW_CITY_TAVERN_IN_05");
};
func void Rtn_VatrasAway_426()
{
	TA_Smalltalk	(05,05,20,00, "NW_CITY_MERCHANT_STAND_01");
    TA_Smalltalk	(20,00,05,05, "NW_CITY_MERCHANT_TAVERN01_01");
};
