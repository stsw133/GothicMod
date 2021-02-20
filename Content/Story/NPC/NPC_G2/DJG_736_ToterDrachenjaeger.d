//******************************************************************************************
instance DJG_736_ToterDrachenjaeger (Npc_Default)
{
	// ------ General ------
	name								=	NAME_ToterDrachenjaeger;
	guild 								=	GIL_DJG;
	id 									=	736;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_2H_SLD_Axe);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_FatBald", Face_Normal06, 0, ITAR_DJG_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_736;
};

FUNC VOID Rtn_Start_736()
{
	TA_Sit_Bench	(08,00,23,00, "CASTLE_14");
    TA_Sit_Bench	(23,00,08,00, "CASTLE_14");
};
