//******************************************************************************************
instance BDT_1091_Addon_Lucia (Npc_Default)
{
	// ------ General ------
	name								=	"Lucia";
	guild 								=	GIL_BDT;
	id 									=	1091;
	voice 								=	16;
	flags  								=	0;
	npctype								=	NPCTYPE_BL_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Initiate-5);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;	

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Dressed+1, BodySkin_N, "Hum_Head_Babe8", FaceBabe_Normal01, Teeth_Pretty, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_1091;
};

FUNC VOID Rtn_Start_1091()
{
    TA_Stand_WP			(07,00,12,00, "BL_INN_05_D");
    TA_Stand_Sweeping	(12,00,14,00, "BL_INN_05_B");
    TA_Stand_WP			(14,00,01,00, "BL_INN_05_D");
    TA_Potion_Alchemy	(01,00,04,00, "BL_INN_UP_LABOR");
    TA_Sleep			(04,00,07,00, "BL_INN_UPSIDE_SLEEP_01");
};
