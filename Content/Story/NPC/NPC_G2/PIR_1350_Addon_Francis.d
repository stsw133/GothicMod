//******************************************************************************************
INSTANCE PIR_1350_Addon_Francis (Npc_Default)
{
	// ------ General ------
	name								=	"Francis";
	guild 								=	GIL_PIR;
	id 									=	1350;
	voice 								=	13;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_Schwert1); 

	// ------ Inventory ------
	CreateInvItem (self, ITKE_Greg_ADDON_MIS);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Cipher, 0, ITAR_PIR_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1350;
};

FUNC VOID Rtn_Start_1350()
{
	TA_Sit_Bench	(05,00,20,00, "ADW_PIRATECAMP_HUT4_01");
	TA_Sit_Bench	(20,00,05,00, "ADW_PIRATECAMP_HUT4_01");
};
FUNC VOID Rtn_GregIsBack_1350()
{
	TA_Saw	(05,00,20,00, "ADW_PIRATECAMP_BEACH_19");
	TA_Saw	(20,00,05,00, "ADW_PIRATECAMP_BEACH_19");
};
