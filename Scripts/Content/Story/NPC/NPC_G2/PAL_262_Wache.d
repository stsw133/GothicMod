///******************************************************************************************
instance PAL_262_Wache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_WACHE;
	guild 								=	GIL_PAL;
	id 									=	262;
	voice 								=	10;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal44, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_262;
};

func void Rtn_Start_262()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "OC_EBR_GUARDPASSAGE_01");
	TA_Stand_ArmsCrossed	(23,00,08,00, "OC_EBR_GUARDPASSAGE_01");
};
