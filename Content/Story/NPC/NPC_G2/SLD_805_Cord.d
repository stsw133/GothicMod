//******************************************************************************************
instance SLD_805_Cord (Npc_Default)
{
	// ------ General ------
	name								=	"Cord";
	guild 								=	GIL_NONE;
	id 									=	805;
	voice 								=	14;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_NPCIsRanger]				=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Strong);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal08, 0, ITAR_SLD_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_805;
};

FUNC VOID Rtn_Start_805()
{
	TA_Practice_Sword	(07,40,22,40, "NW_BIGFARM_CORD");
    TA_Sleep			(22,40,07,40, "NW_BIGFARM_HOUSE_08");
};
FUNC VOID Rtn_PreRangerMeeting_805()
{
	TA_RangerMeeting	(05,00,20,00, "NW_TAVERNE_04");
	TA_RangerMeeting	(20,00,05,00, "NW_TAVERNE_04");
};
FUNC VOID Rtn_RangerMeeting_805()
{
	TA_RangerMeeting	(05,00,20,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_RangerMeeting	(20,00,05,00, "NW_TAVERNE_IN_RANGERMEETING");
};
FUNC VOID Rtn_Parking_805()
{
	TA_Stand_ArmsCrossed	(05,00,20,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_Stand_ArmsCrossed	(20,00,05,00, "NW_TAVERNE_IN_RANGERMEETING");
};
