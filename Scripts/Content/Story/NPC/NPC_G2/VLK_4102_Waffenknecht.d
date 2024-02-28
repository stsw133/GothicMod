///******************************************************************************************
instance VLK_4102_Waffenknecht (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_WAFFENKNECHT;
	guild 								=	GIL_MIL;
	id 									=	4102;
	voice 								=	1;
	npctype								=	NPCTYPE_OCAMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal11, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4102;
};

func void Rtn_Start_4102()
{
	TA_Stand_Guarding	(08,00,23,00, "OC_GUARD_TOWER_01");
    TA_Stand_Guarding	(23,00,08,00, "OC_GUARD_TOWER_01");
};
