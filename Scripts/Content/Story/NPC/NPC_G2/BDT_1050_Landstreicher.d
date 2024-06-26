///******************************************************************************************
instance BDT_1050_Landstreicher (Npc_Default)
{
	/// ------ General ------
	name								=	"W��cz�ga";
	guild 								=	GIL_NONE;
	id 									=	1050;
	voice 								=	9;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_SLD_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_Normal10, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	start_aistate						=	ZS_Stand_ArmsCrossed;
};
