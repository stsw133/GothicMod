///******************************************************************************************
instance BDT_10021_Addon_Wache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Guard;
	guild 								=	GIL_BDT;
	id 									=	10021;
	voice 								=	13;
	npctype								=	NPCTYPE_BL_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Zweihaender4);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Fighter", Face_Normal07, 0, ITAR_RVN_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10021;
};

func void Rtn_Start_10021()
{
	TA_Stand_Guarding	(00,00,12,00, "BL_RAVEN_GUARD_04");
	TA_Stand_Guarding	(12,00,00,00, "BL_RAVEN_GUARD_04");
};
