///******************************************************************************************
instance BAU_955_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild								=	GIL_OUT;
	id									=	955;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 20);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal06, Teeth_Normal, ItAr_BAU_L_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_955;
};

func void Rtn_Start_955()
{
	TA_Pick_FP		(08,10, 12,10, "NW_FARM1_FIELD_07");
	TA_Pick_FP		(12,10, 15,10, "NW_FARM1_FIELD_02");
	TA_Pick_FP		(15,10, 18,10, "NW_FARM1_FIELD_07");
	TA_Pick_FP		(18,10, 22,10, "NW_FARM1_FIELD_02");
	TA_Sit_Campfire	(22,10, 08,10, "NW_FARM1_MILL_05");
};
func void Rtn_BugsThere_955()
{
	TA_Sit_Campfire	(08,10, 22,10, "NW_FARM1_MILL_05");
	TA_Sit_Campfire	(22,10, 08,10, "NW_FARM1_MILL_05");
};
