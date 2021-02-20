//******************************************************************************************
INSTANCE PC_Psionic (Npc_Default)
{
	// ------ General ------
	name								=	"Lester";
	guild 								=	GIL_NONE;
	id 									=	4;
	voice 								=	13;
	flags       						=	NPC_FLAG_IMPORTANT;																			
	npctype								=	NPCTYPE_FRIEND;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self,ItMw_Kriegshammer2);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Normal, BodySkin_P, "Hum_Head_Bald", Face_Lester, 0, ITAR_SLN_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4;
};

FUNC VOID Rtn_Start_4()
{
	TA_Sit_Campfire	(08,00,23,00, "NW_XARDAS_TOWER_LESTER");
    TA_Sit_Campfire	(23,00,08,00, "NW_XARDAS_TOWER_LESTER");
};
FUNC VOID Rtn_Xardas_4()
{
	TA_Sleep	(08,00,23,00, "NW_XARDAS_TOWER_IN1_31");
    TA_Sleep	(23,00,08,00, "NW_XARDAS_TOWER_IN1_31");
};
FUNC VOID Rtn_XardasWeg_4()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_XARDAS_TOWER_02");
    TA_Stand_Guarding	(23,00,08,00, "NW_XARDAS_TOWER_02");
};
FUNC VOID Rtn_WaitForPlayer_4()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "LEVELCHANGE");
    TA_Stand_ArmsCrossed	(23,00,08,00, "LEVELCHANGE");
};
FUNC VOID Rtn_WaitForShip_4()
{
	TA_Smalltalk	(08,00,23,00, "NW_CITY_WAY_TO_SHIP_19");
    TA_Smalltalk	(23,00,08,00, "NW_CITY_WAY_TO_SHIP_19");
};
FUNC VOID Rtn_ShipOff_4()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_XARDAS_TOWER_02");
    TA_Stand_Guarding	(23,00,08,00, "NW_XARDAS_TOWER_02");
};
FUNC VOID Rtn_Ship_4()
{	
	TA_Smalltalk	(08,00,23,00, "SHIP_CREW_19");
	TA_Smalltalk	(23,00,08,00, "SHIP_CREW_19");
};
