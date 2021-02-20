//******************************************************************************************
instance BAU_904_Bauer (Npc_Default)
{
	// ------ General ------
	name								=	NAME_BAUER;
	guild 								=	GIL_BAU;
	id 									=	904;
	voice 								=	1;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal24, 0, ITAR_Bau_00);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_904;
};

FUNC VOID Rtn_Start_904()
{	
	TA_Saw			(09,00,23,00, "NW_BIGFARM_KITCHEN_OUT_01");
    TA_Sit_Chair	(23,00,09,00, "NW_BIGFARM_KITCHEN_09");
};
