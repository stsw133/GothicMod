///******************************************************************************************
instance BDT_1033_Fluechtling (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Fluechtling;
	guild 								=	GIL_OUT;
	id 									=	1033;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_SLD_Sword);
	CreateInvItem (self, ItWr_MorgahardTip);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal41, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1033;
};

func void Rtn_Start_1033()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "NW_TAVERNE_IN_06");
    TA_Stand_ArmsCrossed	(23,00,08,00, "NW_TAVERNE_IN_06");
};
