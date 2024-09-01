///******************************************************************************************
instance DJG_703_Cipher (Npc_Default)
{
	/// ------ General ------
	name								=	"Cipher";
	guild								=	GIL_DJG;
	id									=	703;
	voice								=	7;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Crossbow_M_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ItPo_Health_02, 6);
	CreateInvItem (self, ItMi_OldCoin);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart10, Teeth_Normal, ItAr_DJG_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_703;
};

func void Rtn_Start_703()
{
	TA_Sit_Bench	(08,00, 23,00, "OW_DJG_SWAMPCAMP_02");
	TA_Sit_Bench	(23,00, 08,00, "OW_DJG_SWAMPCAMP_03");
};
func void Rtn_SwampWait1_703()
{
	TA_Guide_Player	(08,00, 23,00, "OW_DJG_SWAMP_WAIT1_01");
	TA_Guide_Player	(23,00, 08,00, "OW_DJG_SWAMP_WAIT1_01");
};
func void Rtn_SwampWait2_703()
{
	TA_RunToWP	(08,00, 23,00, "OW_DJG_SWAMP_WAIT2_01");
	TA_RunToWP	(23,00, 08,00, "OW_DJG_SWAMP_WAIT2_01");
};
func void Rtn_SwampDragon_703()
{
	TA_RunToWP	(08,00, 23,00, "OW_DRAGONSWAMP_009");
	TA_RunToWP	(23,00, 08,00, "OW_DRAGONSWAMP_009");
};
