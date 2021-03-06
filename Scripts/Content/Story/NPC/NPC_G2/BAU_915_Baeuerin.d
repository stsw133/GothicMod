///******************************************************************************************
instance BAU_915_Baeuerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAEUERIN;
	guild 								=	GIL_BAU;
	id 									=	915;
	voice 								=	16;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe4", FaceBabe_Normal03, Teeth_Pretty, ITAR_WD_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_915;
};

func void Rtn_Start_915()
{	
	TA_Pick_FP	(06,00,22,00, "NW_BIGFARM_FIELD_01");
    TA_Sleep	(22,00,06,00, "NW_BIGFARM_STABLE_SLEEP_03");
};
