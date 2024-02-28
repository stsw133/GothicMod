///******************************************************************************************
instance STRF_1100_Straefling (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_STRAEFLING;
	guild 								=	GIL_STRF;
	id 									=	1100;
	voice 								=	1;
	npctype								=	NPCTYPE_OCAMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+1, BodySkin_P, "Hum_Head_Bald", Face_Normal15, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1100;
};

func void Rtn_Start_1100()
{
	TA_Sit_Campfire	(08,00,23,00, "OC_PRISON_CELL_02_SIT");
	TA_Sit_Campfire	(23,00,08,00, "OC_PRISON_CELL_02_SIT");
};
