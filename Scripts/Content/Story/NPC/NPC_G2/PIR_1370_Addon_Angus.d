///******************************************************************************************
instance PIR_1370_Addon_Angus (Npc_Default)
{
	/// ------ General ------
	name								=	"Angus";
	guild								=	GIL_PIR;
	id									=	1370;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_Schlachtaxt);
	
	/// ------ Inventory ------
	CreateInvItem (self, ItRi_Addon_MorgansRing_Mission);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_NormalBart21, Teeth_Normal, ItAr_PIR_M);
	Mdl_SetModelFatness	(self, 1.3);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1370;
};

func void Rtn_Start_1370()
{
	TA_Smalltalk	(05,00, 20,00, "ADW_PIRATECAMP_WATERHOLE_CAVE");
	TA_Smalltalk	(20,00, 05,00, "ADW_PIRATECAMP_WATERHOLE_CAVE");
};
