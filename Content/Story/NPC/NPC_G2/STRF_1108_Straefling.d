//******************************************************************************************
instance STRF_1108_Straefling (Npc_Default)
{
	// ------ General ------
	name								=	NAME_STRAEFLING;
	guild 								=	GIL_STRF;
	id 									=	1108;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_OCAMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+1, BodySkin_N, "Hum_Head_Bald", Face_Normal20, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1108;
};

FUNC VOID Rtn_Start_1108()
{
	TA_Repair_Hut	(08,00,23,00, "OC_OPEN_ROOM_REPAIR_01");
	TA_Repair_Hut	(23,00,08,00, "OC_OPEN_ROOM_REPAIR_01");
};
