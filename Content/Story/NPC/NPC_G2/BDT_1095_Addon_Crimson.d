//******************************************************************************************
instance BDT_1095_Addon_Crimson (Npc_Default)
{
	// ------ General ------
	name								=	"Crimson";
	guild 								=	GIL_BDT;
	id 									=	1095;
	voice 								=	10;
	flags      							=	0;
	npctype								=	NPCTYPE_BL_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Strong+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMw_Nagelknueppel);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thief", Face_Normal37, 0, ITAR_SMITH);
	Mdl_SetModelFatness	(self, -2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_1095;
};

FUNC VOID Rtn_Start_1095()
{
    TA_Smith_Fire	(11,00,14,00, "ADW_MINE_HOEHLE_03");
	TA_Smith_Fire	(14,00,11,00, "ADW_MINE_HOEHLE_03");
};
