//******************************************************************************************
instance DJG_705_Angar_NW (Npc_Default)
{
	// ------ General ------
	name								=	"Angar";
	guild 								=	GIL_DJG;
	id 									=	7050;
	voice 								=	4;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Master-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_B, "Hum_Head_Bald", Face_CorAngar, 0, ITAR_SLT_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine						=	Rtn_Start_7050;
};

FUNC VOID Rtn_Start_7050()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "FARM3");
    TA_Stand_ArmsCrossed	(23,00,08,00, "FARM3");
};
FUNC VOID Rtn_WaitForShip_7050()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "NW_WAITFOR_SHIP_03");
    TA_Stand_ArmsCrossed	(23,00,08,00, "NW_WAITFOR_SHIP_03");
};
FUNC VOID Rtn_Ship_7050()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "SHIP_CREW_03");
    TA_Stand_ArmsCrossed	(23,00,08,00, "SHIP_CREW_03");
};
