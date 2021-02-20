//******************************************************************************************
instance VLK_4145_Waffenknecht (Npc_Default)
{
	// ------ General ------
	name								=	NAME_WAFFENKNECHT;
	guild 								=	GIL_MIL;
	id 									=	4145;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_OCAMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 12);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_NAILED;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_Mil_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal36, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4145;
};

FUNC VOID Rtn_Start_4145()
{
	TA_Stand_Guarding	(08,00,23,00, "OC_GUARD_PALISADE_07");
    TA_Stand_Guarding	(23,00,08,00, "OC_GUARD_PALISADE_07");
};
