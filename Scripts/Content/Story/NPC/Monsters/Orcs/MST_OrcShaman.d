///******************************************************************************************
prototype Mst_Default_OrcShaman (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-szaman";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_ORCSHAMAN;
	aivar[AIV_FaceTex]					=	Hlp_RandomRange(50,58);
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 50);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_OrcShaman()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Shaman_Body", 0, default, "Orc_Head_Shaman", self.aivar[AIV_FaceTex], default, -1);
};
///******************************************************************************************
instance OrcShaman_Sit (Mst_Default_OrcShaman)
{
	B_SetVisuals_OrcShaman();
	EquipItem (self, ItMw_2H_OrcStaff_01);
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance OrcShaman_Hosh_Pak (Mst_Default_OrcShaman)
{
	name								=	"Hosh-Pak";
	
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetMonsterProtection (self, level);
	B_SetVisuals_OrcShaman();
	EquipItem (self, ItMw_2H_OrcStaff_01);
};
