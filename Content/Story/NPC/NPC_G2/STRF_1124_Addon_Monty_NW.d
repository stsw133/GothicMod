//******************************************************************************************
instance STRF_1124_Addon_Monty_NW (Npc_Default)
{
	// ------ General ------
	name								=	"Monty";
	guild 								=	GIL_VLK;
	id 									=	1124;
	voice 								=	8;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_ToughGuy]					=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal31, 0, ITAR_BAU_00);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1124;
};

FUNC VOID Rtn_Start_1124()
{
	TA_Read_Bookstand	(00,00,12,00, "NW_CITY_HABOUR_WERFT_IN_01");
	TA_Read_Bookstand	(12,00,00,00, "NW_CITY_HABOUR_WERFT_IN_01");
};
