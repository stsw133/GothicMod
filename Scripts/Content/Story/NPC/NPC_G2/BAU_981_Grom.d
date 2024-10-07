///******************************************************************************************
instance BAU_981_Grom (Npc_Default)
{
	/// ------ General ------
	name								=	"Grom";
	guild								=	GIL_OUT;
	id									=	981;
	voice								=	8;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_SLD_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_FatBald", Face_P_Gilbert, Teeth_Normal, ItAr_Leather_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_981;
};

func void Rtn_Start_981()
{
	TA_Saw		(08,00, 23,00, "NW_CASTLEMINE_TROLL_04_C");
	TA_Sleep	(23,00, 08,00, "NW_CASTLEMINE_TROLL_04");
};
