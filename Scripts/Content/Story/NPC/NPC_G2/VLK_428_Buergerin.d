///******************************************************************************************
instance VLK_428_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	428;
	voice 								=	16;
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
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe4", FaceBabe_Normal03, Teeth_Pretty, ITAR_WD_M_05);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_428;
};

func void Rtn_Start_428()
{
	TA_Stand_ArmsCrossed	(05,10,20,17, "NW_CITY_MERCHANT_PATH_14_C");
    TA_Smalltalk			(20,17,05,10, "NW_CITY_MERCHANT_PATH_32");
};
func void Rtn_VatrasAway_428()
{
	TA_Smalltalk	(05,10,20,17, "NW_CITY_MERCHANT_PATH_14_A");
    TA_Smalltalk	(20,17,05,10, "NW_CITY_MERCHANT_PATH_32");
};
