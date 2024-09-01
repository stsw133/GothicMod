///******************************************************************************************
instance SLD_810_Dar (Npc_Default)
{
	/// ------ General ------
	name								=	"Dar";
	guild								=	GIL_SLD;
	id									=	810;
	voice								=	3;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars -------
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Sld_Bow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ItMi_Joint, 10);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal_Spassvogel, Teeth_Normal, ItAr_SLD_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_810;
};

func void Rtn_PreStart_810()
{
	TA_Smoke_Joint	(08,00, 22,00, "NW_BIGFARM_KITCHEN_DAR");
	TA_Smoke_Joint	(22,00, 08,00, "NW_BIGFARM_KITCHEN_DAR");
};
func void Rtn_Start_810()
{
	TA_Smoke_Joint	(08,00, 22,00, "NW_BIGFARM_KITCHEN_DAR");
	TA_Sit_Chair	(22,00, 08,00, "NW_BIGFARM_HOUSE_12");
};
