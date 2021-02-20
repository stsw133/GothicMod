//******************************************************************************************
instance VLK_4303_Addon_Erol (Npc_Default)
{
	// ------ General ------
	name								=	"Erol";
	guild 								=	GIL_NONE;
	id 									=	4303;
	voice 								=	10;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_VLK_Sword);
	CreateInvItems (self, ItPo_Health_01, 3);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Corristo, 0, ITAR_VLK_L_12);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_4303;
};

FUNC VOID Rtn_PreStart_4303()
{
	TA_Sit_Bench	(08,00,22,00, "NW_TAVERN_TO_FOREST_03");
    TA_Sit_Bench	(22,00,08,00, "NW_TAVERN_TO_FOREST_03");
};
FUNC VOID Rtn_Start_4303()
{
	TA_RangerMeeting	(08,00,22,00, "NW_BIGFARM_HUT_02");
    TA_RangerMeeting	(22,00,08,00, "NW_BIGFARM_HUT_02");
};
FUNC VOID Rtn_Home_4303()
{
	TA_Sit_Chair	(08,00,22,00, "NW_BIGFARM_HUT_IN_01");
    TA_Sleep		(22,00,08,00, "NW_BIGFARM_HUTINSIDE_BED");
};
