//******************************************************************************************
instance STRF_1122_Addon_Pardos (Npc_Default)
{
	// ------ General ------
	name								=	"Pardos";
	guild 								=	GIL_STRF;
	id 									=	1122;
	voice 								=	3;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Strong-10);
	slf.attribute[ATR_REGENERATEHP]		=	false;

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+1, BodySkin_N, "Hum_Head_Bald", Face_Normal57, 0, -1);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1122;
};

FUNC VOID Rtn_Start_1122()
{
	TA_Sit_Campfire	(08,00,23,00, "ADW_MINE_LAGER_SIDE_04");
	TA_Sit_Campfire	(23,00,08,00, "ADW_MINE_LAGER_SIDE_04");
};
FUNC VOID Rtn_Flucht_1122()
{
	TA_RunToWP	(08,00,23,00, "ADW_BL_HOEHLE_03");
	TA_RunToWP	(23,00,08,00, "ADW_BL_HOEHLE_03");
};
