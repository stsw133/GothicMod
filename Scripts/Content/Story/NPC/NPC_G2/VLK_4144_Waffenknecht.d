///******************************************************************************************
instance VLK_4144_Waffenknecht (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_WAFFENKNECHT;
	guild 								=	GIL_MIL;
	id 									=	4144;
	voice 								=	6;
	npctype								=	NPCTYPE_OCAMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal18, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4144;
};

func void Rtn_Start_4144()
{
	TA_Smalltalk	(08,00,23,00, "OC_CENTER_02");
    TA_Play_Lute	(23,00,08,00, "OC_KNECHTCAMP_01");
};
