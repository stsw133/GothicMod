///******************************************************************************************
instance STRF_1141_Addon_Sklave (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Sklave;
	guild 								=	GIL_STRF;
	id 									=	1141;
	voice 								=	3;
	npctype								=	NPCTYPE_BL_AMBIENT;

	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+1, BodySkin_P, "Hum_Head_Bald", Face_Normal10, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1141;
};

func void Rtn_Start_1141()
{
	TA_Stand_WP	(08,00,23,00, "BL_UP_PLACE_04_SIDE_01");
	TA_Stand_WP	(23,00,08,00, "BL_UP_PLACE_04_SIDE_01");
};
