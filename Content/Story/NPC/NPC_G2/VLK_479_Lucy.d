//******************************************************************************************
instance VLK_479_Lucy (Npc_Default)
{
	// ------ General ------
	name								=	"Lucy";
	guild 								=	GIL_VLK;
	id 									=	479;
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
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe1", FaceBabe_Normal11, Teeth_Pretty, ITAR_WD_L_03);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_479;
};

FUNC VOID Rtn_Start_479()
{
	TA_Rake_FP		(05,00,19,00, "NW_CITY_PICK_02");
	TA_Cook_Stove	(19,00,22,00, "NW_CITY_HABOUR_HUT_07_IN");
	TA_Sleep		(22,00,05,00, "NW_CITY_HABOUR_HUT_07_BED_01");
};
