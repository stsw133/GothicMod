//******************************************************************************************
instance VLK_473_Buergerin (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	473;
	voice 								=	17;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Aivars ------
	aivar[AIV_ToughGuy]					=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe8", FaceBabe_Normal09, Teeth_Pretty, ITAR_WD_M_05);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_473;
};

FUNC VOID Rtn_Start_473()
{
	TA_Smalltalk		(05,05,12,30, "NW_CITY_HABOUR_PUFF_02");
    TA_Smalltalk		(12,30,18,05, "NW_CITY_WAY_TO_SHIP_01");
    TA_Stand_Sweeping	(18,05,22,05, "NW_CITY_HABOUR_POOR_AREA_HUT_01_IN");
    TA_Sleep			(22,05,05,05, "NW_CITY_HABOUR_POOR_AREA_HUT_01_BED_01");
};
