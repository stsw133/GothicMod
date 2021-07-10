///******************************************************************************************
instance STRF_1117_Straefling (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_STRAEFLING;
	guild 								=	GIL_STRF;
	id 									=	1117;
	voice 								=	13;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Bald", Face_Normal24, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1117;
};

func void Rtn_Start_1117()
{
	TA_Pick_Ore	(08,00,23,00, "OW_MINE2_STRF");
	TA_Pick_Ore	(23,00,08,00, "OW_MINE2_STRF");
};
