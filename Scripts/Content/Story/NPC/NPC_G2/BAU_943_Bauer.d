///******************************************************************************************
instance BAU_943_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild 								=	GIL_OUT;
	id 									=	943;
	voice 								=	7;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_FatBald", Face_Normal06, 0, ITAR_Bau_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_943;
};

func void Rtn_Start_943()
{	
	TA_Rake_FP		(05,00,12,00, "NW_FARM2_FIELD_05");
    TA_Sit_Campfire	(12,00,14,00, "NW_FARM2_FIELD_04_C");
    TA_Rake_FP		(14,00,20,52, "NW_FARM2_FIELD_05");
    TA_Sit_Campfire	(20,52,05,00, "NW_FARM2_OUT_09");
};
