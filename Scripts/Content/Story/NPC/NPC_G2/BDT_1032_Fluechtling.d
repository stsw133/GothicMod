///******************************************************************************************
instance BDT_1032_Fluechtling (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Fluechtling;
	guild 								=	GIL_BDT;
	id 									=	1032;
	voice 								=	6;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_EnemyOverride]			=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_SLD_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal36, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1032;
};

func void Rtn_Start_1032()
{
   TA_Sleep	(08,00,23,00, "NW_XARDAS_BANDITS_LEFT");
   TA_Sleep	(23,00,08,00, "NW_XARDAS_BANDITS_LEFT");
};
