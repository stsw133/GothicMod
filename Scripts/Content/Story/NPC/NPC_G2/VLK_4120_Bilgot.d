///******************************************************************************************
instance VLK_4120_Bilgot (Npc_Default)
{
	/// ------ General ------
	name								=	"Bilgot";
	guild								=	GIL_OUT;
	id									=	4120;
	voice								=	5;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ItPo_Health_02, 4);
	CreateInvItem (self, ItMi_OldCoin);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_Weak_Ulf_Wohlers, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4120;
};

func void Rtn_Start_4120()
{
	TA_Sit_Campfire	(08,00, 23,00, "OW_NEWMINE_11");
	TA_Sit_Campfire	(23,00, 08,00, "OW_NEWMINE_11");
};
func void Rtn_FollowToOCBridge_4120()
{
	TA_Follow_Player	(08,00, 23,00, "START");
	TA_Follow_Player	(23,00, 08,00, "START");
};
func void Rtn_FleeOutOfOW_4120()
{
	TA_Sit_Campfire	(08,00, 23,00, "START");
	TA_Sit_Campfire	(23,00, 08,00, "START");
};
func void Rtn_Tot_4120()
{
	TA_Sit_Campfire	(08,00, 23,00, "TOT");
	TA_Sit_Campfire	(23,00, 08,00, "TOT");
};
