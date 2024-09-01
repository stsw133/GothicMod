///******************************************************************************************
instance PIR_1354_Addon_Henry (Npc_Default)
{
	/// ------ General ------
	name								=	"Henry";
	guild								=	GIL_PIR;
	id									=	1354;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_NewsOverride]				=	NEWS_Ambient;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, 90);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Krummschwert);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_FatBald", Face_P_Normal01, Teeth_Normal, ItAr_PIR_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1354;
};

func void Rtn_Start_1354()
{
	TA_Guard_Passage	(05,00, 20,00, "ADW_PIRATECAMP_WAY_04");
	TA_Guard_Passage	(20,00, 05,00, "ADW_PIRATECAMP_WAY_04");
};
