///******************************************************************************************
instance VLK_4200_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	4200;
	voice 								=	17;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe", FaceBabe_Sagitta, Teeth_Pretty, ITAR_WD_M_02);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4200;
};

func void Rtn_Start_4200()
{
	TA_Smalltalk	(08,00,22,00, "NW_CITY_MAINSTREET_05_B");
    TA_Sleep		(22,00,08,00, "NW_CITY_UPTOWN_PATH_08");
};
