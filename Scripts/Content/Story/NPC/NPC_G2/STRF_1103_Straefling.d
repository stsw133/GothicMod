///******************************************************************************************
instance STRF_1103_Straefling (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_STRAEFLING;
	guild 								=	GIL_STRF;
	id 									=	1103;
	voice 								=	13;
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
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Bald", Face_Normal52, 0, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1103;
};

func void Rtn_Start_1103()
{
	TA_Sit_Campfire	(08,00,23,00, "OC_PRISON_CELL_01_SIT");
	TA_Sit_Campfire	(23,00,08,00, "OC_PRISON_CELL_01_SIT");
};
