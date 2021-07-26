///******************************************************************************************
prototype Mst_Default_Snapper (C_Npc)
{
	/// ------ Monster ------
	name								=	"Zêbacz";
	guild								=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]				= 	ID_SNAPPER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SNAPPER;
	B_SetAttributesToLevel (self, 12);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
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
	aivar[AIV_MM_REAL_ID]				= 	ID_RAZOR;
	
	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 18);
	
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
	Mdl_SetVisualBody	(self, "Sna_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_Razor()
{
	Mdl_SetVisual		(self, "Razor.mds");
	Mdl_SetVisualBody	(self, "Sna_Body", 2, default, "", default, default, -1);
};
func void B_SetVisuals_DragonSnapper()
{
	Mdl_SetVisual		(self, "DragonSnapper.mds");
	Mdl_SetVisualBody	(self, "Razor_Demon_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.2, 1.2, 1.2);
};
func void B_SetVisuals_MonsterSnapper()
{
	Mdl_SetVisual		(self, "DragonSnapper.mds");
	Mdl_SetVisualBody	(self, "Sna_Monster_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 2, 2, 2);
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
	name								=	"Smoczy zêbacz";
	aivar[AIV_MM_REAL_ID]				= 	ID_DRAGONSNAPPER;
	
	B_SetAttributesToLevel (self, 40);
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_DragonSnapper();
};
instance MonsterSnapper (Mst_Default_Snapper)
{
	name								=	"Potwór";
	aivar[AIV_MM_REAL_ID]				= 	ID_MONSTERSNAPPER;
	
	B_SetAttributesToLevel (self, 50);
	B_SetVisuals_MonsterSnapper();
};
///******************************************************************************************
///	QuestMonsters
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
	name								=	"Przywódca stada";
	B_SetAttributesToLevel (self, 15);
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
	name								=	"Prychaj¹cy smoczy zêbacz";
	aivar[AIV_MM_REAL_ID]				= 	ID_DRAGONSNAPPER;
	
	B_SetAttributesToLevel (self, 30);
	B_SetVisuals_DragonSnapper();
	Mdl_SetModelScale(self, 1, 1, 1);
};
