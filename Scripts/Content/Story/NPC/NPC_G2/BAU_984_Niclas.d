///******************************************************************************************
instance BAU_984_Niclas (Npc_Default)
{
	/// ------ General ------
	name								=	"Niclas";
	guild								=	GIL_OUT;
	id									=	984;
	voice								=	3;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_SLD_Sword);
	EquipItem (self, ItRw0_Bow_M_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_NormalBart12, Teeth_Normal, ItAr_Leather_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_984;
};

func void Rtn_Start_984()
{
	TA_Sit_Bench	(08,00, 23,00, "NW_CITY_JAEGER_SIT");
	TA_Sit_Bench	(23,00, 08,00, "NW_CITY_JAEGER_SIT");
};
