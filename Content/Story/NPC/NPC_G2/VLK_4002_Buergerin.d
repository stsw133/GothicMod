//******************************************************************************************
instance VLK_4002_Buergerin (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	4002;
	voice 								=	17;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe1", FaceBabe_Normal11, Teeth_Pretty, ITAR_WD_M_02);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4002;
};

FUNC VOID Rtn_Start_4002()
{
	TA_Cook_Stove 		(06,00,08,00, "NW_CITY_RICHTER_COOK");
    TA_Stand_Sweeping	(08,00,10,00, "NW_CITY_UPTOWN_JUDGE_02");
    TA_Smalltalk		(10,00,14,00, "NW_CITY_UPTOWN_PATH_15");
    TA_Cook_Stove 		(14,00,16,00, "NW_CITY_RICHTER_COOK");
    TA_Sit_Chair		(16,00,18,00, "NW_CITY_RICHTER");
    TA_Stand_Sweeping 	(18,00,20,00, "NW_CITY_UPTOWN_JUDGE_02");
    TA_Sit_Throne 		(20,00,23,00, "NW_CITY_UPTOWN_JUDGE_THRONE_01");
    TA_Sleep			(23,00,06,00, "NW_CITY_RICHTER_BED_WEIB");
};
