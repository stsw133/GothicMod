///******************************************************************************************
prototype Mst_Default_Waran (C_Npc)
{
	/// ------ Monster ------
	name								=	"Jaszczur";
	guild								=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]				= 	ID_WARAN;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_WARAN;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Waran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_SetVisualBody	(self, "War_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_FireWaran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_ApplyOverlayMds	(self, "Firewaran.mds");
	Mdl_SetVisualBody	(self, "War_Fire_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_DemonFireWaran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_ApplyOverlayMds	(self, "Firewaran.mds");
	Mdl_SetVisualBody	(self, "War_DemonFire_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Waran (Mst_Default_Waran)
{
	B_SetAttributesToLevel (self, 12);
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Waran();
};
instance FireWaran (Mst_Default_Waran)
{
	name								=	"Ognisty jaszczur";
	aivar[AIV_MM_REAL_ID]				=	ID_FIREWARAN;
	
	damagetype 							=	DAM_FIRE;
	B_SetAttributesToLevel (self, 20);
	B_SetVisuals_FireWaran();
};
instance DemonFireWaran (Mst_Default_Waran)
{
	name								=	"Demoniczny jaszczur";
	aivar[AIV_MM_REAL_ID]				=	ID_FIREWARAN;
	
	damagetype 							=	DAM_FIRE;
	B_SetAttributesToLevel (self, 30);
	B_SetVisuals_DemonFireWaran();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance BeachWaran1 (Mst_Default_Waran)
{
	B_SetAttributesToLevel (self, 12);
	B_SetVisuals_Waran();
};
instance BeachWaran2 (Mst_Default_Waran)
{
	B_SetAttributesToLevel (self, 12);
	B_SetVisuals_Waran();
};
