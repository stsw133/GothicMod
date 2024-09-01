///******************************************************************************************
instance VLK_4152_Olav (Npc_Default)
{
	/// ------ General ------
	name								=	"Olav";
	guild								=	GIL_MIL;
	id									=	4152;
	voice								=	4;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItMi_OldCoin);
	CreateInvItem (self, ItSe_GoldPocket100);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart22, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4152;
};

func void Rtn_Start_4152()
{
	TA_Stand_Guarding	(08,00, 23,00, "OW_WOLFHUT_01");
	TA_Stand_Guarding	(23,00, 08,00, "OW_WOLFHUT_01");
};
