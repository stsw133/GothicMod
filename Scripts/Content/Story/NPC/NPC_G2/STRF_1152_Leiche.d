///******************************************************************************************
instance STRF_1152_Leiche (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Straefling;
	guild 								=	GIL_STRF;
	id 									=	1152;
	voice 								=	8;
	npctype								=	NPCTYPE_OCMAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 2);
	NpcFn_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+1, BodySkin_L, "Hum_Head_Bald", Face_Normal02, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1152;
};

func void Rtn_Start_1152()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_MINE3_LEICHE_02");
    TA_Stand_Guarding	(23,00,08,00, "OW_MINE3_LEICHE_02");
};
