//******************************************************************************************
instance DJG_713_Biff (Npc_Default)
{
	// ------ General ------
	name								=	"Biff";
	guild 								=	GIL_DJG;
	id 									=	713;
	voice 								=	7;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_PartyMember]				=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Strong-5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Axe);

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ItPo_Health_03, 4);
	CreateInvItem (self, ItMi_OldCoin);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal23, 0, ITAR_DJG_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_713;
};

FUNC VOID Rtn_PreStart_713()
{
	TA_Smalltalk	(08,00,23,00, "OW_DJG_STARTCAMP_01");
    TA_Smalltalk	(23,00,08,00, "OW_DJG_STARTCAMP_01");
};
FUNC VOID Rtn_Start_713()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "OW_DJG_STARTCAMP_01");
    TA_Stand_ArmsCrossed	(23,00,08,00, "OW_DJG_STARTCAMP_01");
};
FUNC VOID Rtn_Follow_713()
{
	TA_Follow_Player	(08,00,23,00, "OW_PATH_298");
    TA_Follow_Player	(23,00,08,00, "OW_PATH_298");
};
FUNC VOID Rtn_Stay_Swamp_713()
{
	TA_Stand_Guarding	(08,00,23,00, "SWAMPDRAGON");
    TA_Stand_Guarding	(23,00,08,00, "SWAMPDRAGON");
};
FUNC VOID Rtn_Stay_Rock_713()
{
	TA_Stand_Guarding	(08,00,23,00, "LOCATION_19_01");
    TA_Stand_Guarding	(23,00,08,00, "LOCATION_19_01");
};
FUNC VOID Rtn_Stay_Fire_713()
{
	TA_Stand_Guarding	(08,00,23,00, "CASTLE_29");
    TA_Stand_Guarding	(23,00,08,00, "CASTLE_29");
};
FUNC VOID Rtn_Stay_Ice_713()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_ICEDRAGON_09");
    TA_Stand_Guarding	(23,00,08,00, "OW_ICEDRAGON_09");
};
FUNC VOID Rtn_Stay_AwayFromOC_713()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_PATH_298");
    TA_Stand_Guarding	(23,00,08,00, "OW_PATH_298");
};
FUNC VOID Rtn_RunsToPass_713()
{
	TA_RunToWP	(08,00,23,00, "START");
    TA_RunToWP	(23,00,08,00, "START");
};
