///******************************************************************************************
prototype Mst_Default_Waran (C_Npc)
{
	/// ------ Monster ------
	name								=	"Jaszczur";
	guild								=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]				= 	ID_WARAN;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 12);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_WARAN;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter] 			=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Waran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_SetVisualBody	(self, "War_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_FireWaran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_ApplyOverlayMds	(self, "Firewaran.mds");
	Mdl_SetVisualBody	(self, "War_Fire_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Waran (Mst_Default_Waran)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Waran();
};
instance FireWaran (Mst_Default_Waran)
{
	name						=	"Ognisty jaszczur";
	aivar[AIV_MM_REAL_ID]		=	ID_FIREWARAN;
	
	B_SetMonsterAttributes (self, 30);
	//damage[DAM_INDEX_FIRE]	/=	2;
	
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Waran();
};
///******************************************************************************************
instance BeachWaran1 (Mst_Default_Waran)
{
	B_SetVisuals_Waran();
};
instance BeachWaran2 (Mst_Default_Waran)
{
	B_SetVisuals_Waran();
};
