///******************************************************************************************
instance BDT_10301_Addon_RangerBandit_M (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	10301;
	voice 								=	1;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Medium-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	EquipItem (self, ItRw_SLD_Bow);
	CreateInvItems (self, ItWr_StonePlateCommon_Addon, 2);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal12, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ TA ------
	daily_routine						=	Rtn_Start_10301;
};

func void Rtn_Start_10301()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "NW_FARM2_TO_TAVERN_06");
    TA_Stand_ArmsCrossed	(23,00,08,00, "NW_FARM2_TO_TAVERN_06");
};
