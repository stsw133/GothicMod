///******************************************************************************************
instance BDT_1031_Fluechtling (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Fluechtling;
	guild 								=	GIL_BDT;
	id 									=	1031;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Aivars ------
	aivar[AIV_EnemyOverride]			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_SLD_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItWr_MorgahardTip);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_Normal03, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1031;
};

func void Rtn_Start_1031()
{
	TA_Sit_Chair	(08,00,23,00, "NW_XARDAS_BANDITS_LEFT");
    TA_Sit_Chair	(23,00,08,00, "NW_XARDAS_BANDITS_LEFT");
};
