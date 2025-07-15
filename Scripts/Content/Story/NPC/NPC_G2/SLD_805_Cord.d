///******************************************************************************************
instance SLD_805_Cord (Npc_Default)
{
	/// ------ General ------
	name								=	"Cord";
	guild								=	GIL_NONE;
	id									=	805;
	voice								=	14;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_IsRanger;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Normal_Cord, Teeth_Normal, ItAr_SLD_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_805;
};

func void Rtn_Start_805()
{
	TA_Practice_Sword	(07,40, 22,40, "NW_BIGFARM_CORD");
	TA_Sleep			(22,40, 07,40, "NW_BIGFARM_HOUSE_08");
};
func void Rtn_PreRangerMeeting_805()
{
	TA_RangerMeeting	(05,00, 20,00, "NW_TAVERNE_04");
	TA_RangerMeeting	(20,00, 05,00, "NW_TAVERNE_04");
};
func void Rtn_RangerMeeting_805()
{
	TA_RangerMeeting	(05,00, 20,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_RangerMeeting	(20,00, 05,00, "NW_TAVERNE_IN_RANGERMEETING");
};
func void Rtn_Parking_805()
{
	TA_Stand_ArmsCrossed	(05,00, 20,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_Stand_ArmsCrossed	(20,00, 05,00, "NW_TAVERNE_IN_RANGERMEETING");
};
