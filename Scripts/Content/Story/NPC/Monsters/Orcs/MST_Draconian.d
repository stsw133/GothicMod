///******************************************************************************************
prototype Mst_Default_Draconian (C_Npc)
{
	/// ------ Monster ------
	name								=	"Jaszczurocz³ek";
	guild								=	GIL_DRACONIAN;
	aivar[AIV_MM_REAL_ID]				=	ID_DRACONIAN;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	NpcFn_SetAttributesToLevel (self, 35);
	NpcFn_SetFightSkills (self, 50);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
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
func void B_SetVisuals_Draconian()
{
	Mdl_SetVisual		(self, "Draconian.mds");
	Mdl_SetVisualBody	(self, "Drc_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
///******************************************************************************************
instance Draconian (Mst_Default_Draconian)
{
	B_SetVisuals_Draconian();
	EquipItem (self, ItMw_2h_OrcSword_01);
};
