//******************************************************************************************
PROTOTYPE Mst_Default_OrcShaman (C_Npc)
{
	// ------ Monster ------
	name								=	"Ork-szaman";
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_ORCSHAMAN;
	aivar[AIV_Race]						= 	RACE_Orc;
	voice								=	18;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 30);
	B_SetFightSkills (self, FightTalent_Medium);

	aivar[AIV_FaceTex] = Hlp_RandomRange(50,58);

	// ------ FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] 			=	OnlyRoutine;
};
//******************************************************************************************
func void B_SetVisuals_OrcShaman()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Shaman_Body", 0, DEFAULT, "Orc_Head_Shaman", self.aivar[AIV_FaceTex], DEFAULT, -1);
};
//******************************************************************************************
INSTANCE OrcShaman_Sit (Mst_Default_OrcShaman)
{
	B_SetVisuals_OrcShaman();
	EquipItem (self, ItMw_2H_OrcStaff_01);
};
//******************************************************************************************
INSTANCE OrcShaman_Hosh_Pak (Mst_Default_OrcShaman)
{
	name								=	"Hosh-Pak";

	B_SetMonsterAttributes (self, OrcShaman_Sit.level+10);

	B_SetVisuals_OrcShaman();
	EquipItem (self, ItMw_2H_OrcStaff_01);
};
