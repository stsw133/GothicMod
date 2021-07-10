///******************************************************************************************
prototype Mst_Default_Orc (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork";
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_ORCWARRIOR;
	aivar[AIV_Race]						= 	RACE_Orc;
	voice								=	18;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 10);
	B_SetFightSkills (self, FightTalent_Medium);
	
	/// ------ FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_Orc()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Orc_Body", 0, DEFAULT, "Orc_Head_Warrior", 0, DEFAULT, -1);
};
///******************************************************************************************
instance Orc (Mst_Default_Orc)
{
	B_SetVisuals_Orc();
	EquipItem (self, ItMw_2H_OrcAxe_01);
};
