///******************************************************************************************
instance NOV_651_ToterNovize (Npc_Default)
{
	/// ------ General ------
	name								=	Name_ToterNovize;
	guild								=	GIL_NOV;
	id									=	651;
	voice								=	3;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Mordrag, Teeth_Normal, ItAr_NOV_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_651;
};

func void Rtn_Start_651()
{
	TA_Sleep	(08,00, 22,00, "NW_TROLLAREA_PATH_70");
	TA_Sleep	(22,00, 08,00, "NW_TROLLAREA_PATH_70");
};
