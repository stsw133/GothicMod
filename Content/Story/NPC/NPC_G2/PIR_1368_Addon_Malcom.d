//******************************************************************************************
INSTANCE PIR_1368_Addon_Malcom (Npc_Default)
{
	// ------ General ------
	name								=	"Malcom";
	guild 								=	GIL_PIR;
	id 									=	1368;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Weak);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_Addon_PIR1hAxe);
//	CreateInvItem (self, ItWr_TwoHStonePlate3_Addon);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Pony", Face_Normal22, 0, ITAR_PIR_L);
	Mdl_SetModelFatness	(self, 1.1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_1368;
};

FUNC VOID Rtn_PreStart_1368()
{
	TA_Sit_Campfire	(06,00,10,00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Saw			(10,00,14,00, "ADW_PIRATECAMP_WAY_15");
	TA_Sit_Campfire (14,00,18,00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Saw			(18,00,22,00, "ADW_PIRATECAMP_WAY_15");
	TA_Sit_Campfire	(22,00,02,00, "ADW_PIRATECAMP_LUMBER_SIT");
	TA_Sit_Campfire	(02,00,06,00, "ADW_PIRATECAMP_LUMBER_SIT");
};
FUNC VOID Rtn_Start_1368()
{
	TA_Sleep	(06,00,18,00, "ADW_PIRATECAMP_SECRETCAVE_02");
	TA_Sleep	(18,00,06,00, "ADW_PIRATECAMP_SECRETCAVE_02");
};
