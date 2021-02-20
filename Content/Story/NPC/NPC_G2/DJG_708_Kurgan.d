//******************************************************************************************
instance DJG_708_Kurgan (Npc_Default)
{
	// ------ General ------
	name								=	"Kurgan";
	guild 								=	GIL_DJG;
	id 									=	708;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Crossbow_M_01);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal01, 0, ITAR_DJG_H);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_708;
};

FUNC VOID Rtn_PreStart_708()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_PATH_1_5_4");
    TA_Stand_Guarding	(23,00,08,00, "OW_PATH_1_5_4");
};
FUNC VOID Rtn_Start_708()
{
	TA_Stand_Guarding	(08,00,23,00, "OW_MOVEMENT_LURKER_NEARBGOBBO03");
    TA_Stand_Guarding	(23,00,08,00, "OW_MOVEMENT_LURKER_NEARBGOBBO03");
};
