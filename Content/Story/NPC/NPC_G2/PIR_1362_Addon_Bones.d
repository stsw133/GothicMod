//******************************************************************************************
INSTANCE PIR_1362_Addon_Bones (Npc_Default)
{
	// ------ General ------
	name								=	"Bones";
	guild 								=	GIL_PIR;
	id 									=	1362;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_Addon_PIR2hAxe);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal37, 0, ITAR_PIR_M);
	Mdl_SetModelFatness	(self, 1.3);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_1362;
};

FUNC VOID Rtn_PreStart_1362()
{
	TA_Practice_Sword	(08,00,20,00, "ADW_PIRATECAMP_TRAIN_01");
	TA_Practice_Sword	(20,00,08,00, "ADW_PIRATECAMP_TRAIN_01");
};
FUNC VOID Rtn_Start_1362()
{
	TA_Practice_Sword	(06,55,19,55, "ADW_PIRATECAMP_TRAIN_01");
	TA_Stand_Drinking	(19,55,20,55, "WP_PIR_04");
	TA_Sit_Campfire		(20,55,00,55, "WP_PIR_04");
	TA_Stand_Drinking	(00,55,01,55, "WP_PIR_04");
	TA_Sit_Campfire		(01,55,06,55, "WP_PIR_04");
};
