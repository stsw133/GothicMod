//******************************************************************************************
prototype MST_Default_StoneGuardian (C_NPC)
{
	// ------ Monster ------
	name								=	"Kamienny stra¿nik";
	guild								=	GIL_STONEGUARDIAN;
	aivar[AIV_MM_REAL_ID]				=	ID_STONEGUARDIAN;
	bodyStateInterruptableOverride		=	true;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 20);

	// ------ FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_STONEGUARDIAN;

	// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Stoneguardian()
{
	Mdl_SetVisual		(self, "StoneGuardian.mds");
	Mdl_SetVisualBody	(self, "StG_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Stoneguardian (MST_Default_StoneGuardian)
{
	B_SetVisuals_Stoneguardian();
};
//******************************************************************************************
INSTANCE Stoneguardian_MineDead1 (MST_Default_StoneGuardian)
{	B_SetVisuals_Stoneguardian();	};
INSTANCE Stoneguardian_MineDead2 (MST_Default_StoneGuardian)
{	B_SetVisuals_Stoneguardian();	};
INSTANCE Stoneguardian_MineDead3 (MST_Default_StoneGuardian)
{	B_SetVisuals_Stoneguardian();	};
INSTANCE Stoneguardian_MineDead4 (MST_Default_StoneGuardian)
{	B_SetVisuals_Stoneguardian();	};
//******************************************************************************************
INSTANCE Stoneguardian_Dead1 (MST_Default_StoneGuardian)
{	B_SetVisuals_Stoneguardian();	};
INSTANCE Stoneguardian_Dead2 (MST_Default_StoneGuardian)
{	B_SetVisuals_Stoneguardian();	};
INSTANCE Stoneguardian_Dead3 (MST_Default_StoneGuardian)
{	B_SetVisuals_Stoneguardian();	};
INSTANCE Stoneguardian_MerdarionsSchluessel	(MST_Default_StoneGuardian)
{
	B_SetVisuals_Stoneguardian();
	CreateInvItem (self, ITKE_PORTALTEMPELWALKTHROUGH_ADDON);
};
//******************************************************************************************
INSTANCE Stoneguardian_Ornament (MST_Default_StoneGuardian)
{
	B_SetVisuals_Stoneguardian();
	CreateInvItem (self, ItMi_Ornament_Addon);
};
//******************************************************************************************
INSTANCE Stoneguardian_Heiler (MST_Default_StoneGuardian)
{
	B_SetVisuals_Stoneguardian();
	CreateInvItem (self, ITKE_Addon_Heiler);
};
INSTANCE Stoneguardian_Sani01 (MST_Default_StoneGuardian)
{
	B_SetVisuals_Stoneguardian();
	aivar[AIV_EnemyOverride]	=	true;
};
INSTANCE Stoneguardian_Sani02 (MST_Default_StoneGuardian)
{
	B_SetVisuals_Stoneguardian();
	aivar[AIV_EnemyOverride]	=	true;
};
INSTANCE Stoneguardian_Sani03 (MST_Default_StoneGuardian)
{
	B_SetVisuals_Stoneguardian();
	aivar[AIV_EnemyOverride]	=	true;
};
INSTANCE Stoneguardian_Sani04 (MST_Default_StoneGuardian)
{
	B_SetVisuals_Stoneguardian();
	aivar[AIV_EnemyOverride]	=	true;
};
INSTANCE Stoneguardian_Sani05 (MST_Default_StoneGuardian)
{
	B_SetVisuals_Stoneguardian();
	aivar[AIV_EnemyOverride]	=	true;
};
INSTANCE Stoneguardian_Sani06 (MST_Default_StoneGuardian)
{
	B_SetVisuals_Stoneguardian();
	aivar[AIV_EnemyOverride]	=	true;
};
//******************************************************************************************
INSTANCE Stoneguardian_NailedPortalADW1 (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2400;
	aivar[AIV_OriginalFightTactic] 	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_NailedPortalADW2 (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	3100;
	aivar[AIV_OriginalFightTactic] 	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
//******************************************************************************************
INSTANCE Stoneguardian_NailedValleyShowcase_01 (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2000;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_NailedValleyShowcase_02 (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	1000;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	B_SetVisuals_Stoneguardian();
};
//******************************************************************************************
INSTANCE Stoneguardian_ADANOSTEMPELENTRANCE_01 (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2000;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_ADANOSTEMPELENTRANCE_02 (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2000;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_ADANOSTEMPELENTRANCE_03 (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2000;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_ADANOSTEMPELENTRANCE_04 (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	900;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
//******************************************************************************************
INSTANCE Stoneguardian_TREASUREPITS_05A (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	3000;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_TREASUREPITS_05B (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2700;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_TREASUREPITS_05C (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2900;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_TREASUREPITS_05D (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2400;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_TREASUREPITS_05E (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2900;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_TREASUREPITS_05F (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2800;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
//******************************************************************************************
INSTANCE Stoneguardian_TREASUREPITS_09A (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2400;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_TREASUREPITS_09B (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2400;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_TREASUREPITS_09C (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2000;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_TREASUREPITS_09D (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2400;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_TREASUREPITS_09E (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2700;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_TREASUREPITS_09F (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	2900;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};    
//******************************************************************************************
INSTANCE Stoneguardian_RHADEMES_14A (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	700;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_RHADEMES_14B (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	1200;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_RHADEMES_14C (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	700;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_RHADEMES_14D (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	700;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_RHADEMES_14E (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	1200;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
INSTANCE Stoneguardian_RHADEMES_14F (MST_Default_StoneGuardian)
{
	aivar[AIV_MaxDistToWp]		=	700;
	aivar[AIV_OriginalFightTactic]	=	FAI_STONEGUARDIAN;
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Stoneguardian();
};
