///******************************************************************************************
instance VLK_427_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	427;
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
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_BabeHair", FaceBabe_Servant, Teeth_Pretty, ITAR_Babe_BAU_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_427;
};

func void Rtn_Start_427()
{
	TA_Cook_Stove		(04,30,12,00, "NW_CITY_MERCHANT_SHOP01_IN_03_B");
	TA_Stand_Sweeping	(12,00,13,02, "NW_CITY_MERCHANT_SHOP01_FRONT_02_B");
	TA_Smalltalk		(13,02,14,05, "NW_CITY_MERCHANT_SHOP01_FRONT_03_E");
	TA_Cook_Stove		(14,05,16,00, "NW_CITY_MERCHANT_SHOP01_IN_03_B");
	TA_Stand_Sweeping	(16,00,17,02, "NW_CITY_MERCHANT_SHOP01_FRONT_02_B");
	TA_Smalltalk		(17,02,18,05, "NW_CITY_MERCHANT_SHOP01_FRONT_03_E");
	TA_Cook_Stove		(18,05,20,00, "NW_CITY_MERCHANT_SHOP01_IN_03_B");
	TA_Sit_Chair		(20,00,23,30, "NW_CITY_MERCHANT_SHOP01_IN_01");
    TA_Sleep			(23,30,04,30, "NW_CITY_MERCHANT_SHOP01_IN_01");
};
