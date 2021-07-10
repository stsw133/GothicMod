///******************************************************************************************
instance BDT_1088_Addon_Torwache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_TORWACHE;
	guild 								=	GIL_BDT;
	id 									=	1088;
	voice 								=	6;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ AI vars ------
	aivar[AIV_NewsOverride]				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Master-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Axe);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal45, 0, ITAR_RVN_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1088;
};

func void Rtn_Start_1088()
{
    TA_Guard_Passage	(09,00,21,00, "BL_UP_GUARD");
    TA_Guard_Passage	(21,00,09,00, "BL_UP_GUARD");
};
