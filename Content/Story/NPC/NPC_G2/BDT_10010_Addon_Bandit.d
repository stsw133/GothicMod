///******************************************************************************************
instance BDT_10010_Addon_Bandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	10010;
	voice 								=	1;
	npctype								=	NPCTYPE_BL_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Nagelknueppel);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Bald", Face_Normal08, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10010;
};

func void Rtn_Start_10010()
{
	TA_Sit_Bench	(10,00,12,00, "BL_MID_09");
	TA_Sit_Bench	(12,00,10,00, "BL_MID_09");
};
