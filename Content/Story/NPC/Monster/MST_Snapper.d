///******************************************************************************************
prototype Mst_Default_Snapper (C_Npc)
{
	/// ------ Monster ------
	name								=	"Zêbacz";
	guild								=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]				= 	ID_SNAPPER;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 12);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SNAPPER;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter]			=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
prototype Mst_Default_Razor (C_Npc)
{
	/// ------ Monster ------
	name								=	"Brzytwiak";
	guild								=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]				= 	ID_SNAPPER;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 18);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SNAPPER;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter]			=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Snapper()
{
	Mdl_SetVisual		(self, "Snapper.mds");
	Mdl_SetVisualBody	(self, "Sna_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Razor()
{
	Mdl_SetVisual		(self, "Razor.mds");
	Mdl_SetVisualBody	(self, "Sna_Body", 2, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_DragonSnapper()
{
	Mdl_SetVisual		(self, "DragonSnapper.mds");
	Mdl_SetVisualBody	(self, "Razor_Demon_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
	Mdl_SetModelScale	(self, 1.2, 1.2, 1.2);
};
///******************************************************************************************
instance Snapper (Mst_Default_Snapper)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Snapper();
};
instance Razor (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance DragonSnapper (Mst_Default_Snapper)
{
	name						=	"Smoczy zêbacz";
	aivar[AIV_MM_REAL_ID]		= 	ID_DRAGONSNAPPER;

	B_SetMonsterAttributes (self, 40);

	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_DragonSnapper();
};
///******************************************************************************************
instance NewMine_Snapper1 (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
instance NewMine_Snapper2 (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
instance NewMine_Snapper3 (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
instance NewMine_Snapper4 (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
instance NewMine_Snapper5 (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
instance NewMine_Snapper6 (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
instance NewMine_Snapper7 (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
instance NewMine_Snapper8 (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
instance NewMine_LeadSnapper (Mst_Default_Snapper)
{
	name						=	"Przywódca stada";
	B_SetMonsterAttributes (self, Snapper.level+3);
	B_SetVisuals_Snapper();
	
	CreateInvItem (self, ItAt_ClawLeader);
};
///******************************************************************************************
instance Grimbald_Snapper1 (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
instance Grimbald_Snapper2 (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
instance Grimbald_Snapper3 (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
///******************************************************************************************
instance CanyonRazor01 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor02 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor03 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor04 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor05 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor06 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor07 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor08 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor09 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor10 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
///******************************************************************************************
instance Gaans_Snapper (Mst_Default_Snapper)
{
	name						=	"Prychaj¹cy smoczy zêbacz";
	aivar[AIV_MM_REAL_ID]		= 	ID_DRAGONSNAPPER;
	
	B_SetMonsterAttributes (self, DragonSnapper.level-10);
	
	B_SetVisuals_DragonSnapper();
	Mdl_SetModelScale(self, 1, 1, 1);
};
