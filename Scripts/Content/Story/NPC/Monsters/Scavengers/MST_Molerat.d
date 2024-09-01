///******************************************************************************************
prototype Mst_Default_Molerat (C_Npc)
{
	/// ------ Monster ------
	guild								=	GIL_MOLERAT;
	aivar[AIV_MM_REAL_ID]				=	ID_MOLERAT;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_MOLERAT;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Molerat()
{
	Mdl_SetVisual		(self, "Molerat.mds");
	Mdl_SetVisualBody	(self, "Mol_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_Sandrat()
{
	Mdl_SetVisual		(self, "Molerat.mds");
	Mdl_SetVisualBody	(self, "Mol_Sand_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_Swamprat()
{
	Mdl_SetVisual		(self, "Swamprat.mds");
	Mdl_SetVisualBody	(self, "Fot_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_Mountainrat()
{
	Mdl_SetVisual		(self, "Molerat.mds");
	Mdl_SetVisualBody	(self, "Mol_Mountain_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.35, 1.3, 1.35);
	Mdl_SetModelFatness	(self, 2);
};
///******************************************************************************************
instance Molerat (Mst_Default_Molerat)
{
	name								=	"Kretoszczur";
	
	NpcFn_SetAttributesToLevel (self, 5);
	NpcFn_SetMonsterProtection (self, level);
	
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Molerat();
};
instance Sandrat (Mst_Default_Molerat)
{
	name								=	"Piaskoszczur";
	
	NpcFn_SetAttributesToLevel (self, 5);
	NpcFn_SetMonsterProtection (self, level);
	B_SetVisuals_Sandrat();
};
instance Swamprat (Mst_Default_Molerat)
{
	name								=	"Bagnoszczur";
	
	NpcFn_SetAttributesToLevel (self, 5);
	NpcFn_SetMonsterProtection (self, level);
	B_SetVisuals_Swamprat();
};
instance Mountainrat (Mst_Default_Molerat)
{
	name								=	"Górski kretoszczur";
	
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetMonsterProtection (self, level);
	
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Mountainrat();
};
