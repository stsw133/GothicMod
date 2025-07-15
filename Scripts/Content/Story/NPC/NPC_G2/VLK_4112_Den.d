///******************************************************************************************
instance VLK_4112_Den (Npc_Default)
{
	/// ------ General ------
	name								=	"Den";
	guild								=	GIL_MIL;
	id									=	4112;
	voice								=	5;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1H_Vlk_Dagger);
	
	/// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 200);
	CreateInvItem (self, ItMi_SilverRing);
	CreateInvItem (self, ItMi_GoldRing);
	CreateInvItem (self, ItMi_SilverCandleHolder);
	CreateInvItem (self, ItMi_GoldNecklace);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_NormalBart_Grim, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4112;
};

func void Rtn_Start_4112()
{
	TA_Stand_Guarding	(08,00, 23,00, "OW_PATH_182");
	TA_Stand_Guarding	(23,00, 08,00, "OW_PATH_182");
};
