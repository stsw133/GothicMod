//******************************************************************************************
instance VLK_467_Buerger (Npc_Default)
{
	// ------ General ------
	name								=	NAME_BUERGER;
	guild 								=	GIL_VLK;
	id 									=	467;
	voice 								=	6;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Aivars ------
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_SWORD);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Bald", Face_Normal05, 0, ITAR_Vlk_L_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_467;
};

FUNC VOID Rtn_Start_467()
{
	TA_Stand_ArmsCrossed	(11,00,19,00, "NW_CITY_WATCH_FIGHT_02");
    TA_Smalltalk			(19,00,03,00, "NW_CITY_HABOUR_03");
    TA_Sit_Throne			(03,00,05,00, "NW_CITY_PUFF_THRONE");
    TA_Smalltalk			(05,00,11,00, "NW_CITY_WAY_TO_SHIP_01");
};
