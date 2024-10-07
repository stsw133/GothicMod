///******************************************************************************************
instance SLD_814_Sentenza (Npc_Default)
{
	/// ------ General ------
	name								=	"Sentenza";
	guild								=	GIL_SLD;
	id									=	814;
	voice								=	9;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MM_FollowTime]			=	60;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	
	/// ------ Inventory ------
	CreateInvItem (self, ItFo_Apple);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Tough_Okyl, Teeth_Normal, ItAr_SLD_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_814;
};

func void Rtn_Start_814()
{
	TA_Stand_Eating	(08,00, 22,00, "NW_BIGFARM_ALLEE_01");
	TA_Stand_Eating	(22,00, 08,00, "NW_BIGFARM_ALLEE_01");
};
func void Rtn_Follow_814()
{
	TA_Follow_Player	(08,00, 22,00, "NW_BIGFARM_VORPOSTEN1_02");
	TA_Follow_Player	(22,00, 08,00, "NW_BIGFARM_VORPOSTEN1_02");
};
