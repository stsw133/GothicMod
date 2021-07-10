///******************************************************************************************
instance STRF_1109_Straefling (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_STRAEFLING;
	guild 								=	GIL_STRF;
	id 									=	1109;
	voice 								=	13;
	npctype								=	NPCTYPE_OCAMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Bald", Face_Normal32, 0, -1);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1109;
};

func void Rtn_Start_1109()
{
	TA_Repair_Hut	(08,00,23,00, "OC_OPEN_ROOM_REPAIR_02");
	TA_Repair_Hut	(23,00,08,00, "OC_OPEN_ROOM_REPAIR_02");
};
