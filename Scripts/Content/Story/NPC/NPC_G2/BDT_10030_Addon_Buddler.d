///******************************************************************************************
instance BDT_10030_Addon_Buddler (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buddler;
	guild 								=	GIL_BDT;
	id 									=	10030;
	voice 								=	8;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Thief", Face_Normal11, 0, ITAR_Bandit);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10030;
};

func void Rtn_Start_10030()
{
	TA_Stand_Drinking	(06,00,12,00, "ADW_MINE_22");
	TA_Stand_Drinking	(12,00,06,00, "ADW_MINE_22");
};
