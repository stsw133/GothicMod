///******************************************************************************************
instance Pal_205_Torwache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Torwache;
	guild 								=	GIL_PAL;
	id 									=	205;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	aivar[AIV_NewsOverride]				=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Strong+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal55, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_205;
};

func void Rtn_Start_205()
{
	TA_Guard_Passage	(08,00,23,00, "NW_CITYHALL_GUARD_02");
	TA_Guard_Passage	(23,00,08,00, "NW_CITYHALL_GUARD_02");
};
