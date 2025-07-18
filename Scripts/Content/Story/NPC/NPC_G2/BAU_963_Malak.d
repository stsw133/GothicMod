///******************************************************************************************
instance BAU_963_Malak (Npc_Default)
{
	/// ------ General ------
	name								=	"Malak";
	guild								=	GIL_OUT;
	id									=	963;
	voice								=	8;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 35);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal_Sly, Teeth_Normal, ItAr_BAU_L_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_963;
};

func void Rtn_Start_963()
{
	TA_Stand_Eating	(08,00, 22,00, "NW_FARM3_MALAK");
	TA_Stand_Eating	(22,00, 08,00, "NW_FARM3_MALAK");
};
func void Rtn_FleeFromPass_963()
{
	TA_Stand_Eating	(08,00, 22,00, "NW_BIGMILL_MALAKSVERSTECK_MALAK");
	TA_Stand_Eating	(22,00, 08,00, "NW_BIGMILL_MALAKSVERSTECK_MALAK");
};
