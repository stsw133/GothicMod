///******************************************************************************************
instance NOV_600_Pedro (Npc_Default) 
{
	/// ------ General ------
	name								=	"Pedro";
	guild								=	GIL_NOV;
	id									=	600;
	voice								=	9;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_NewsOverride]				=	NEWS_Ambient;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Nov_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Psionic", Face_L_Normal_GorNaBar, Teeth_Normal, ItAr_NOV_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_600;
};

func void Rtn_Start_600()
{
	TA_Stand_Guarding	(08,00, 23,00, "NW_MONASTERY_MILTEN");
	TA_Stand_Guarding	(23,00, 08,00, "NW_MONASTERY_MILTEN");
};
func void Rtn_Tot_600()
{
	TA_Stand_Guarding	(08,00, 23,00, "TOT");
	TA_Stand_Guarding	(23,00, 08,00, "TOT");
};
