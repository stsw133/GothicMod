//******************************************************************************************
instance VLK_483_Buergerin (Npc_Default)
{
	// ------ General ------
	name								=	Name_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	483;
	voice 								=	16;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe4", FaceBabe_Normal03, Teeth_Pretty, ITAR_WD_M_01);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_483;
};

FUNC VOID Rtn_Start_483()
{
	TA_Smalltalk	(08,00,18,00, "NW_CITY_HABOUR_09");
    TA_Sleep		(18,00,08,00, "NW_CITY_HABOUR_HUT_06_BED_01");
};
