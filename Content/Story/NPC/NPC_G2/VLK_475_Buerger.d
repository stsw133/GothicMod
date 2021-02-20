//******************************************************************************************
instance VLK_475_Buerger (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Buerger;
	guild 								=	GIL_VLK;
	id 									=	475;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Aivars ------
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;	

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal53, 0, ITAR_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_475;
};

FUNC VOID Rtn_Start_475()
{
	TA_Stand_ArmsCrossed	(10,55,18,50, "NW_CITY_WATCH_FIGHT_02");
    TA_Smalltalk			(18,50,03,05, "NW_CITY_HABOUR_04");
    TA_Stand_Drinking		(03,05,05,05, "NW_CITY_HABOUR_PUFF_IN_01");
	TA_Smalltalk			(05,05,10,05, "NW_CITY_HABOUR_POOR_AREA_01");
};
