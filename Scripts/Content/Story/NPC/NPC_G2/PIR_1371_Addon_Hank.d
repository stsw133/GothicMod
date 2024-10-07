///******************************************************************************************
instance PIR_1371_Addon_Hank (Npc_Default)
{
	/// ------ General ------
	name								=	"Hank";
	guild								=	GIL_PIR;
	id									=	1371;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Addon_PIR1hSword);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Lefty, Teeth_Normal, ItAr_PIR_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1370;
};

func void Rtn_Start_1371()
{
	TA_Smalltalk	(05,00, 20,00, "ADW_PIRATECAMP_WATERHOLE_CAVE");
	TA_Smalltalk	(20,00, 05,00, "ADW_PIRATECAMP_WATERHOLE_CAVE");
};
