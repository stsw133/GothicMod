//******************************************************************************************
instance BDT_1015_Bandit_L (Npc_Default)
{
	// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	1015;
	voice 								=	6;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_EnemyOverride]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItWr_BanditLetter_MIS);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Bald", Face_Normal03, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	RTN_Start_1015;
};

FUNC VOID Rtn_Start_1015()
{
	TA_Stand_ArmsCrossed	(00,00,12,00, "NW_XARDAS_BANDITS_RIGHT");
	TA_Stand_ArmsCrossed	(12,00,00,00, "NW_XARDAS_BANDITS_RIGHT");
}; 
