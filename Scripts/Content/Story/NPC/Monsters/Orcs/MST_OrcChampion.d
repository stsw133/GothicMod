///******************************************************************************************
prototype Mst_Default_OrcChampion (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-herszt";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				=	ID_ORCCHAMPION;
	aivar[AIV_FaceTex]					=	Hlp_Random(12);
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, 70);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
};
///******************************************************************************************
func void B_SetVisuals_OrcChampion()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Champion_Body", self.aivar[AIV_BodyTex], default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};
///******************************************************************************************
instance OrcElite_AntiPaladin (Mst_Default_OrcChampion)
{
	B_SetVisuals_OrcChampion();
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItRi_OrcEliteRing);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
instance OrkElite_AntiPaladinOrkOberst (Mst_Default_OrcChampion)
{
	name								=	"Ork-pu³kownik";
	
	NpcFn_SetAttributesToLevel (self, 55);
	NpcFn_SetMonsterProtection (self, level);
	
	B_SetVisuals_OrcChampion();
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItRi_OrcEliteRing);
	CreateInvItem (self, ItWr_Map_Orcelite_MIS);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance OrcElite_AntiPaladin1 (Mst_Default_OrcChampion)
{
	id									=	111;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcChampion();
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItRi_OrcEliteRing);
	
	start_aistate						=	ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
instance OrcElite_AntiPaladin2 (Mst_Default_OrcChampion)
{
	id									=	112;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcChampion();
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItRi_OrcEliteRing);
	
	start_aistate						=	ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
instance OrcElite_AntiPaladin3 (Mst_Default_OrcChampion)
{
	id									=	113;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcChampion();
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItRi_OrcEliteRing);
	
	start_aistate						=	ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
///******************************************************************************************
instance OrkElite_AntiPaladinOrkOberst_DI (Mst_Default_OrcChampion)
{
	name								=	"Ork-genera³";
	aivar[AIV_EnemyOverride]			=	true;
	
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetMonsterProtection (self, level);
	
	B_SetVisuals_OrcChampion();
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItKe_OrkKnastDI_MIS);
	CreateInvItem (self, ItRi_OrcEliteRing);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart]			=	OnlyRoutine;
};
