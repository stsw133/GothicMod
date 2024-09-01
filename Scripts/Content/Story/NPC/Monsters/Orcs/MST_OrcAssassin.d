///******************************************************************************************
prototype Mst_Default_OrcAssassin (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-zabójca";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				=	ID_ORCWARRIOR;
	aivar[AIV_FaceTex]					=	Hlp_Random(12);
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 70);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
};
///******************************************************************************************
func void B_SetVisuals_OrcAssassin()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Dark_Body", self.aivar[AIV_BodyTex], default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};
///******************************************************************************************
instance OrcAssassin (Mst_Default_OrcAssassin)
{
	B_SetVisuals_OrcAssassin();
	EquipItem (self, ItMw_2h_OrcDagger_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart]			=	OnlyRoutine;
};
