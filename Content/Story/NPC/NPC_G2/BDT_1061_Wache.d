//******************************************************************************************
instance BDT_1061_Wache (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Wache;
	guild 								=	GIL_BDT;
	id 									=	1061;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_EnemyOverride]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	// ------ Weapons ------
	EquipItem (self, ItMw_ShortSword2);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal44, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_1061;
};	 

FUNC VOID Rtn_Start_1061()
{
	TA_Stand_Guarding	(00,00,12,00, "NW_CASTLEMINE_PATH_02");
	TA_Stand_Guarding	(12,00,00,00, "NW_CASTLEMINE_PATH_02");
};
