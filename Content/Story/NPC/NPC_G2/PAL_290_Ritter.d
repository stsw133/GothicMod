//******************************************************************************************
instance Pal_290_Ritter (Npc_Default)
{
	// ------ General ------
	name								=	NAME_Ritter;
	guild 								=	GIL_PAL;
	id 									=	290;
	voice 								=	12;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal45, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_290;
};

FUNC VOID Rtn_Start_290()
{
	TA_Practice_Sword	(08,00,23,00, "NW_CITY_PALCAMP_11");
	TA_Practice_Sword	(23,00,08,00, "NW_CITY_PALCAMP_11");
};
