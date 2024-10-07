///******************************************************************************************
instance VLK_4304_Addon_William (Npc_Default)
{
	/// ------ General ------
	name								=	"William";
	guild								=	GIL_VLK;
	id									=	4304;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Inventory ------
	CreateInvItem (self, ItWr_Addon_William_01);
	CreateInvItem (self, ItMi_OldCoin);
	CreateInvItems (self, ItKe_Lockpick, 2);
	CreateInvItem (self, ItFo_Apple);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_Homer, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 0.9);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4304;
};

func void Rtn_Start_4304()
{
	TA_Smalltalk	(05,00, 20,00, "ADW_ENTRANCE_RUIN2_02");
	TA_Smalltalk	(20,00, 05,00, "ADW_ENTRANCE_RUIN2_02");
};
