//******************************************************************************************
instance VLK_4143_HaupttorWache (Npc_Default)
{
	// ------ General ------
	name								=	"Haupttorwache";
	guild 								=	GIL_VLK;
	id 									=	4143;
	voice 								=	13;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 12);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_Vlk_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal25, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4143;
};

FUNC VOID Rtn_Start_4143()
{
	TA_Stand_Guarding	(08,00,23,00, "OC_GUARD_PALISADE_09");
    TA_Stand_Guarding	(23,00,08,00, "OC_GUARD_PALISADE_09");
};
