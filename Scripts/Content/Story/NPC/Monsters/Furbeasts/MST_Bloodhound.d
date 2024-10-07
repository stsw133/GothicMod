///******************************************************************************************
/// Bloodhound
///******************************************************************************************
prototype Mst_Default_Bloodhound (C_Npc)
{
	/// ------ Monster ------
	name								=	"Krwawy ogar";
	guild								=	GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID]				=	ID_Bloodhound;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_SHADOWBEAST;
	
	NpcFn_SetAttributesToLevel (self, 25);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX*2;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};

///******************************************************************************************
func void B_SetVisuals_Bloodhound()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Bhd_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_Lizardhound()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Bhd_Lizard_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Bloodhound (Mst_Default_Bloodhound)
{
	B_SetVisuals_Bloodhound();
};
instance Lizardhound (Mst_Default_Bloodhound)
{
	name								=	"Bagienny ogar";
	B_SetVisuals_Lizardhound();
};
