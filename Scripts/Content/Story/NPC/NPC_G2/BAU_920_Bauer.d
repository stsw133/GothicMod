///******************************************************************************************
instance BAU_920_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild 								=	GIL_BAU;
	id 									=	920;
	voice 								=	7;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal41, 0, ITAR_BAU_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_920;
};

func void Rtn_Start_920()
{	
	TA_Smalltalk	(07,50,21,50, "NW_BIGFARM_HOUSE_OUT_04");
    TA_Smalltalk	(21,50,07,50, "NW_BIGFARM_STABLE_01");
};
