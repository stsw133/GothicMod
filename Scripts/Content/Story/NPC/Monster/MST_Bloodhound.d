///******************************************************************************************
prototype Mst_Default_Bloodhound (C_Npc)
{
	name								=	"Krwawy ogar";
	guild								=	GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID]				=	ID_Bloodhound;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 25);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SHADOWBEAST;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	3000;
	
	aivar[AIV_MM_FollowTime]			=	10;
	aivar[AIV_MM_FollowInWater]			=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void Set_Bloodhound_Visuals()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Bhd_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
instance Bloodhound (Mst_Default_Bloodhound)
{
	Set_Bloodhound_Visuals();
};
