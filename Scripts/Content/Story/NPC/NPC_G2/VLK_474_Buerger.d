///******************************************************************************************
instance VLK_474_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buerger;
	guild								=	GIL_VLK;
	id									=	474;
	voice								=	7;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart_Senyan, Teeth_Normal, ItAr_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_474;
};

func void Rtn_Start_474()
{
	TA_Sit_Bench	(08,00, 22,00, "NW_CITY_HABOUR_BENCH_02");
	TA_Sit_Bench	(22,00, 08,00, "NW_CITY_HABOUR_BENCH_02");
};
