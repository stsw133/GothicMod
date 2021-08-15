///******************************************************************************************
instance BDT_10028_Addon_Buddler (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buddler;
	guild 								=	GIL_BDT;
	id 									=	10028;
	voice 								=	12;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_Normal00, 0, ITAR_Bandit);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10028;
};

func void Rtn_Start_10028()
{
	TA_Smalltalk	(06,00,12,00, "ADW_MINE_22");
	TA_Smalltalk	(12,00,06,00, "ADW_MINE_22");
};
func void Rtn_Work_10028()
{
	TA_Pick_Ore	(08,00,23,00, "ADW_MINE_PICK_03");
    TA_Pick_Ore	(23,00,08,00, "ADW_MINE_PICK_03");
};
