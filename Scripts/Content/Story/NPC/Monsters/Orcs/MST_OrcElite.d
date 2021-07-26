///******************************************************************************************
prototype Mst_Default_OrcElite (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-elita";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_ORCELITE;
//	aivar[AIV_Race]						= 	RACE_Orc;
	aivar[AIV_FaceTex]					=	Hlp_Random(12);
	
	/// ------ Attributes & FT ------
//	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	B_SetAttributesToLevel (self, 45);
	B_SetFightSkills (self, FightTalent_Medium);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
//	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
};
///******************************************************************************************
prototype Mst_Default_OrcElite2 (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-herszt";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_ORCCOMMANDER;
//	aivar[AIV_Race]						= 	RACE_Orc;
	aivar[AIV_FaceTex]					=	Hlp_Random(12);
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Medium);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
//	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
};
///******************************************************************************************
func void B_SetVisuals_OrcElite()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Elite_Body", 0, default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};
func void B_SetVisuals_OrcElite_Champion()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Champion_Body", 0, default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};
func void B_SetVisuals_OrcElite_Dark()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Dark_Body", 0, default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};
///******************************************************************************************
instance OrcElite_Rest (Mst_Default_OrcElite)
{
	B_SetVisuals_OrcElite();
	EquipItem (self, ItMw_2H_OrcElite_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
};
instance OrcElite_Roam (Mst_Default_OrcElite)
{
	B_SetVisuals_OrcElite();
	EquipItem (self, ItMw_2H_OrcElite_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
instance OrcElite_AntiPaladin (Mst_Default_OrcElite2)
{
	B_SetVisuals_OrcElite_Champion();
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItRi_OrcEliteRing);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
instance OrkElite_AntiPaladinOrkOberst (Mst_Default_OrcElite2)
{
	name								=	"Ork-pu³kownik";
	
	B_SetAttributesToLevel (self, 55);
	
	B_SetVisuals_OrcElite_Champion();
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItRi_OrcEliteRing);
	CreateInvItem (self, ItWr_Map_Orcelite_MIS);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
instance OrcElite_AntiPaladin1 (Mst_Default_OrcElite2)
{
	id 									=	111;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcElite_Champion();
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItRi_OrcEliteRing);
	
	start_aistate						=	ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
instance OrcElite_AntiPaladin2 (Mst_Default_OrcElite2)
{
	id 									=	112;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcElite_Champion();
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItRi_OrcEliteRing);
	
	start_aistate						=	ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
instance OrcElite_AntiPaladin3 (Mst_Default_OrcElite2)
{
	id 									=	113;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcElite_Champion();
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItRi_OrcEliteRing);
	
	start_aistate						=	ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
instance OrkElite_AntiPaladinOrkOberst_DI (Mst_Default_OrcElite2)
{
	name								=	"Ork-pu³kownik";
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetAttributesToLevel (self, 60);
	B_SetVisuals_OrcElite_Champion();
	
	EquipItem (self, ItMw_2H_OrcElite_01);
	CreateInvItem (self, ItKe_OrkKnastDI_MIS);
	CreateInvItem (self, ItRi_OrcEliteRing);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] 			=	OnlyRoutine;
};
///******************************************************************************************
instance OrcElite_DIOberst1_Rest (Mst_Default_OrcElite)
{
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcElite();
	EquipItem (self, ItMw_2H_OrcElite_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
instance OrcElite_DIOberst2_Rest (Mst_Default_OrcElite)
{
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcElite();
	EquipItem (self, ItMw_2H_OrcElite_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
instance OrcElite_DIOberst3_Rest (Mst_Default_OrcElite)
{
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcElite();
	EquipItem (self, ItMw_2H_OrcElite_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
