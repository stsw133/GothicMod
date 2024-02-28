///******************************************************************************************
instance PAL_2005_Leiche (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_PALADIN;
	guild 								=	GIL_NONE;
	id 									=	2005;
	voice 								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal28, 0, ITAR_PAL_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_2005;
};

func void Rtn_Start_2005()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_MINE3_LEICHE_05");
	TA_Stand_Guarding	(23,00,08,00, "OW_MINE3_LEICHE_05");
};
