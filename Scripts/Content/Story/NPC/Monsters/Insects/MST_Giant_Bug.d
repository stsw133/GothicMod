///******************************************************************************************

var int GiveAmbientInvCounter_GiantBug;

///******************************************************************************************
/// GiantBug
///******************************************************************************************
prototype Mst_Default_GiantBug (C_Npc)
{
	/// ------ Monster ------
	name								=	"Polna bestia";
	guild								=	GIL_GIANT_BUG;
	aivar[AIV_MM_REAL_ID]				=	ID_GIANT_BUG;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_GIANT_BUG;
	
	NpcFn_SetAttributesToLevel (self, 8);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
	
	/// ------ Inventory ------
	GiveAmbientInvCounter_GiantBug += 1;
	if (GiveAmbientInvCounter_GiantBug % 3 == 0)
	{
		CreateInvItem (self, ItFo_Seeds);
	};
};

///******************************************************************************************
func void B_SetVisuals_GiantBug()
{
	Mdl_SetVisual		(self, "Giant_Bug.mds");
	Mdl_SetVisualBody	(self, "Giant_Bug_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Giant_Bug (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Giant_Bug_VinoRitual1 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Giant_Bug_VinoRitual2 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};

///******************************************************************************************
instance Lobarts_Giant_Bug1 (Mst_Default_GiantBug)	
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug2 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug3 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug4 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug5 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug6 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug7 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
