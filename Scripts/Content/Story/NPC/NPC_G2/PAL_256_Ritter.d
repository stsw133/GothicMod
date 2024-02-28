///******************************************************************************************
instance PAL_256_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_RITTER;
	guild 								=	GIL_PAL;
	id 									=	256;
	voice 								=	4;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_FatBald", Face_Normal11, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_256;
};

func void Rtn_Start_256()
{
	TA_Practice_Sword	(08,00,19,00, "OC_TRAIN_02");
	TA_Sit_Campfire		(19,00,08,00, "OC_CAMPFIRE_OUT_02");
};
