///******************************************************************************************
instance STRF_1150_Leiche (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Straefling;
	guild 								=	GIL_STRF;
	id 									=	1150;
	voice 								=	8;
	npctype								=	NPCTYPE_OCMAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 2);
	B_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+1, BodySkin_N, "Hum_Head_Bald", Face_Normal39, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1150;
};

func void Rtn_Start_1150()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_SPAWN_TRACK_LEICHE_01");
	TA_Stand_Guarding	(23,00,08,00, "OW_SPAWN_TRACK_LEICHE_01");
};
