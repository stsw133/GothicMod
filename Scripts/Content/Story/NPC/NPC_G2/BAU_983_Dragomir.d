///******************************************************************************************
instance BAU_983_Dragomir (Npc_Default)
{
	/// ------ General ------
	name								=	"Dragomir";
	guild								=	GIL_OUT;
	id									=	983;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_SLD_Sword);
	EquipItem (self, itRw0_Crossbow_L_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Tough_Lee_ähnlich, Teeth_Normal, ItAr_Leather_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_983;
};

func void Rtn_Start_983()
{
	TA_Sit_Bench	(08,00, 23,00, "NW_TAVERNE_TROLLAREA_MONSTER_02_01");
	TA_Sit_Bench	(23,00, 08,00, "NW_TAVERNE_TROLLAREA_MONSTER_02_01");
};
