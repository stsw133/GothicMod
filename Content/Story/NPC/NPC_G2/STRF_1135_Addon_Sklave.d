///******************************************************************************************
instance STRF_1135_Addon_Sklave (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Sklave;
	guild 								=	GIL_STRF;
	id 									=	1135;
	voice 								=	3;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Weak);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+1, BodySkin_P, "Hum_Head_Psionic", Face_Normal02, 0, -1);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1135;
};

func void Rtn_Start_1135()
{
	TA_Stand_WP	(08,00,23,00, "ADW_MINE_SKLAVENTOD_05");
	TA_Stand_WP	(23,00,08,00, "ADW_MINE_SKLAVENTOD_05");
};
