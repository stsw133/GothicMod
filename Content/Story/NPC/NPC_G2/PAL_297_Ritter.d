//******************************************************************************************
instance PAL_297_Ritter (Npc_Default)
{
	// ------ General ------
	name								=	NAME_RITTER;
	guild 								=	GIL_PAL;
	id 									=	297;
	voice 								=	4;
	flags      							=	0;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	// ------ Aivars ------
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;	

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItTe_PassNW);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal20, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_297;
};

FUNC VOID Rtn_Start_297()
{
	TA_Stand_Guarding	(08,00,22,00, "NW_PASS_GATEGUARD_02");
	TA_Stand_Guarding	(22,00,08,00, "NW_PASS_GATEGUARD_02");
};
