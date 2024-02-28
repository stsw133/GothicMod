///******************************************************************************************
prototype Mst_Default_Lurker (C_Npc)
{
	/// ------ Monster ------
	name								=	"Topielec";
	guild								=	GIL_LURKER;
	aivar[AIV_MM_REAL_ID]				= 	ID_LURKER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_LURKER;
	
	NpcFn_SetAttributesToLevel (self, 13);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Lurker()
{
	Mdl_SetVisual		(self, "Lurker.mds");
	Mdl_SetVisualBody	(self, "Lur_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Lurker (Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Kervo_Lurker1 (Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	aivar[AIV_MaxDistToWp]				=	500;
	aivar[AIV_OriginalFightTactic]		=	FAI_LURKER;
};
instance Kervo_Lurker2 (Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	aivar[AIV_MaxDistToWp]				=	500;
	aivar[AIV_OriginalFightTactic]		=	FAI_LURKER;
};
instance Kervo_Lurker3 (Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	aivar[AIV_MaxDistToWp]				=	500;
	aivar[AIV_OriginalFightTactic]		=	FAI_LURKER;
};
instance Kervo_Lurker4 (Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	aivar[AIV_MaxDistToWp]				=	500;
	aivar[AIV_OriginalFightTactic]		=	FAI_LURKER;
};
instance Kervo_Lurker5 (Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	aivar[AIV_MaxDistToWp]				=	500;
	aivar[AIV_OriginalFightTactic]		=	FAI_LURKER;
};
instance Kervo_Lurker6 (Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
	aivar[AIV_MaxDistToWp]				=	500;
	aivar[AIV_OriginalFightTactic]		=	FAI_LURKER;
};
///******************************************************************************************
instance BeachLurker1 (Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
};
instance BeachLurker2 (Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
};
instance BeachLurker3 (Mst_Default_Lurker)
{
	B_SetVisuals_Lurker();
};
