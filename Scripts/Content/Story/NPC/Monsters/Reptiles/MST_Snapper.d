///******************************************************************************************
prototype Mst_Default_Snapper (C_Npc)
{
	/// ------ Monster ------
	name								=	"Zêbacz";
	guild								=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]				=	ID_SNAPPER;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_SNAPPER;
	
	NpcFn_SetAttributesToLevel (self, 12);
	NpcFn_SetMonsterProtection (self, level);
	
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
func void B_SetVisuals_Snapper()
{
	Mdl_SetVisual		(self, "Snapper.mds");
	Mdl_SetVisualBody	(self, "Sna_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_DesertSnapper()
{
	Mdl_SetVisual		(self, "Snapper.mds");
	Mdl_SetVisualBody	(self, "Sna_Desert_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
///******************************************************************************************
instance Snapper (Mst_Default_Snapper)
{
	B_SetVisuals_Snapper();
};
instance DesertSnapper (Mst_Default_Snapper)
{
	B_SetVisuals_DesertSnapper();
};

///******************************************************************************************
/// QuestMonsters
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
	
	NpcFn_SetAttributesToLevel (self, 15);
	//NpcFn_SetMonsterProtection (self, level);
	
	B_SetVisuals_Snapper();
	Mdl_SetModelScale (self, 1.1, 1.1, 1.1);
	
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
