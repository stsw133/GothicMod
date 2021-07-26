///******************************************************************************************
prototype Mst_Default_Draconian (C_Npc)
{
	/// ------ Monster ------
	name								=	"Jaszczurocz�ek";
	guild								=	GIL_DRACONIAN;
	aivar[AIV_MM_REAL_ID]				=	ID_DRACONIAN;
//	aivar[AIV_Race]						=	RACE_Draconian;
	
	/// ------ Attributes & FT ------
//	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	B_SetAttributesToLevel (self, 35);
	B_SetFightSkills (self, FightTalent_Medium);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
//	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_Draconian()
{
	Mdl_SetVisual		(self, "Draconian.mds");
	Mdl_SetVisualBody	(self, "Drc_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Draconian (Mst_Default_Draconian)
{
	B_SetVisuals_Draconian();
	EquipItem (self, ItMw_2h_Draconian);
};
