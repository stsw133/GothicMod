//******************************************************************************************
instance VLK_441_Garvell (Npc_Default)
{
	// ------ General ------
	name								=	"Garvell";
	guild 								=	GIL_VLK;
	id 									=	441;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_ToughGuy]					=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Axe);

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItSe_GoldPocket25);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Lefty, 0, ITAR_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_441;
};

FUNC VOID Rtn_Start_441()
{
	TA_Stand_Drinking	(04,50,19,11, "NW_CITY_HABOUR_07");
    TA_Smalltalk		(19,11,00,01, "NW_CITY_HABOUR_TAVERN01_SMALLTALK_01");
    TA_Stand_Drinking	(00,01,04,50, "NW_CITY_HABOUR_TAVERN01_STAND_01");
};
