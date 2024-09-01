///******************************************************************************************
prototype Mst_Default_Orc (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				=	ID_ORC;
	aivar[AIV_FaceTex]					=	Hlp_Random(12);
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	NpcFn_SetAttributesToLevel (self, 15);
	NpcFn_SetFightSkills (self, 30);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
};
///******************************************************************************************
func void B_SetVisuals_Orc()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Orc_Body", self.aivar[AIV_BodyTex], default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};
///******************************************************************************************
instance Orc (Mst_Default_Orc)
{
	B_SetVisuals_Orc();
//	EquipItem (self, ItMw_2H_OrcAxe_01);
};
