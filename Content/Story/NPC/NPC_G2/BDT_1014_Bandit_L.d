//******************************************************************************************
instance BDT_1014_Bandit_L (Npc_Default)
{
	// ------ General ------
	name								=	"Brago";
	guild 								=	GIL_BDT;
	id 									=	1014;
	voice 								=	6;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_EnemyOverride]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 6);
	B_SetFightSkills (self, FightTalent_Weak);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMw_Nagelknueppel);

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_Bandit);
	CreateInvItem (self, ItWr_SaturasFirstMessage_Addon_Sealed);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Psionic", Face_Mud, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	RTN_Start_1014;
};

FUNC VOID Rtn_Start_1014()
{
	TA_Stand_ArmsCrossed	(00,00,12,00, "NW_XARDAS_BANDITS_LEFT");
	TA_Stand_ArmsCrossed	(12,00,00,00, "NW_XARDAS_BANDITS_LEFT");
}; 
