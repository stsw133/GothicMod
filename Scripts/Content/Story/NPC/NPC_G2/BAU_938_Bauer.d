///******************************************************************************************
instance BAU_938_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild								=	GIL_OUT;
	id									=	938;
	voice								=	7;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 15);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Weak_Orry, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_938;
};

func void Rtn_Start_938()
{
	TA_Pick_FP		(08,00, 22,00, "NW_FARM4_FIELD_02");
	TA_Sit_Campfire	(22,00, 08,00, "NW_FARM4_REST_01");
};
func void Rtn_FleeDMT_938()
{
	TA_Rake_FP	(08,00, 22,00, "NW_FARM4_FIELD_02");
	TA_Rake_FP	(22,00, 08,00, "NW_FARM4_FIELD_02");
};
