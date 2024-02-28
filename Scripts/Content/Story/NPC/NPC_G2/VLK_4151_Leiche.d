///******************************************************************************************
instance VLK_4151_Leiche (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_WAFFENKNECHT;
	guild 								=	GIL_MIL;
	id 									=	4151;
	voice 								=	1;
	npctype								=	NPCTYPE_OCAMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal37, 0, ITAR_MIL_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4151;
};

func void Rtn_Start_4151()
{
	TA_Stand_Guarding	(08,00,22,00, "OW_SPAWN_TRACK_LEICHE_00");
    TA_Stand_Guarding	(22,00,08,00, "OW_SPAWN_TRACK_LEICHE_00");
};
