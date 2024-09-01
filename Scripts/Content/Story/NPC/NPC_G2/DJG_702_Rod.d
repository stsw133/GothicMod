///******************************************************************************************
instance DJG_702_Rod (Npc_Default)
{
	/// ------ General ------
	name								=	"Rod";
	guild								=	GIL_DJG;
	id									=	702;
	voice								=	6;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ItPo_Health_02, 6);
	CreateInvItem (self, ItMi_OldCoin);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_ToughBart01, Teeth_Normal, ItAr_DJG_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_702;
};

func void Rtn_Start_702()
{
	TA_Sit_Bench	(08,00, 23,00, "OW_DJG_SWAMPCAMP_01");
	TA_Sit_Bench	(23,00, 08,00, "OW_DJG_SWAMPCAMP_01");
};
func void Rtn_SwampWait1_702()
{
	TA_Guide_Player	(08,00, 23,00, "OW_DJG_SWAMP_WAIT1_02");
	TA_Guide_Player	(23,00, 08,00, "OW_DJG_SWAMP_WAIT1_02");
};
func void Rtn_SwampWait2_702()
{
	TA_RunToWP	(08,00, 23,00, "OW_DJG_SWAMP_WAIT2_02");
	TA_RunToWP	(23,00, 08,00, "OW_DJG_SWAMP_WAIT2_02");
};
func void Rtn_SwampDragon_702()
{
	TA_RunToWP	(08,00, 23,00, "OW_SWAMPDRAGON_01");
	TA_RunToWP	(23,00, 08,00, "OW_SWAMPDRAGON_01");
};
