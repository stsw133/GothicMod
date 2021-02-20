//******************************************************************************************
instance STRF_1127_Addon_Pardos_NW (Npc_Default)
{
	// ------ General ------
	name								=	"Pardos";
	guild 								=	GIL_OUT;
	id 									=	1127;
	voice 								=	3;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal57, 0, ITAR_SLD_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1127;
};

FUNC VOID Rtn_Start_1127()
{
	TA_Sit_Throne	(00,00,12,00, "NW_FARM3_HOUSE_IN_NAVI_2");
	TA_Sit_Throne	(12,00,00,00, "NW_FARM3_HOUSE_IN_NAVI_2");
};
