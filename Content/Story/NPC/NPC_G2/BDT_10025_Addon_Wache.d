//******************************************************************************************
instance BDT_10025_Addon_Wache (Npc_Default)
{
	// ------ General ------
	name								=	"Kucharz";
	guild 								=	GIL_BDT;
	id 									=	10025;
	voice 								=	7;
	flags      							=	0;
	npctype								=	NPCTYPE_BL_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
//	EquipItem (self, ItMw_2h_Sld_Axe);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_FatBald", Face_Normal07, 0, ITAR_BARKEEPER);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_10025;
};

FUNC VOID Rtn_Start_10025()
{
	TA_Cook_Cauldron	(06,00,12,00, "ADW_MINE_CAULDRON");
	TA_Cook_Cauldron	(12,00,06,00, "ADW_MINE_CAULDRON");
};
