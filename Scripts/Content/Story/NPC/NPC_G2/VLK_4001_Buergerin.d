///******************************************************************************************
instance VLK_4001_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	4001;
	voice 								=	16;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_BabeHair", FaceBabe_Servant, Teeth_Pretty, ITAR_Babe_VLK_M_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4001;
};

func void Rtn_Start_4001()
{
	TA_Sleep			(21,45,06,30, "NW_CITY_REICH03_BED_02");
	TA_Stand_Sweeping	(06,30,08,00, "NW_CITY_UPTOWN_HUT_02_ENTRY");
    TA_Cook_Stove		(08,00,10,00, "NW_CITY_REICH03_COOK");
    TA_Smalltalk		(10,00,14,00, "NW_CITY_UPTOWN_PATH_15_B");
    TA_Sweep_FP			(14,00,15,30, "NW_CITY_UPTOWN_HUT_02_IN");
    TA_Cook_Stove		(15,30,17,00, "NW_CITY_REICH03_COOK");
    TA_Smalltalk		(17,00,21,45, "NW_CITY_UPTOWN_PATH_15_B");
};
