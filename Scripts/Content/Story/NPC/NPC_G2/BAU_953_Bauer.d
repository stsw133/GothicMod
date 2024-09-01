///******************************************************************************************
instance BAU_953_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild								=	GIL_OUT;
	id									=	953;
	voice								=	7;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 20);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart04, Teeth_Normal, ItAr_BAU_L_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_953;
};

func void Rtn_Start_953()
{
	TA_Pick_FP		(08,05, 12,05, "NW_FARM1_FIELD_03");
	TA_Pick_FP		(12,05, 15,05, "NW_FARM1_FIELD_06");
	TA_Pick_FP		(15,05, 18,05, "NW_FARM1_FIELD_03");
	TA_Pick_FP		(18,05, 22,05, "NW_FARM1_FIELD_06");
	TA_Sit_Campfire	(22,05, 08,05, "NW_FARM1_MILL_05");
};
func void Rtn_BugsThere_953() 
{
	TA_Sit_Campfire	(08,05, 22,05, "NW_FARM1_MILL_05");
	TA_Sit_Campfire	(22,05, 08,05, "NW_FARM1_MILL_05");
};
