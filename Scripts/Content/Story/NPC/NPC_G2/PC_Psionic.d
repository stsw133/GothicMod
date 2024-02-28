///******************************************************************************************
instance PC_Psionic (Npc_Default)
{
	/// ------ General ------
	name								=	"Lester";
	guild 								=	GIL_NONE;
	id 									=	4;
	voice 								=	13;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self,ItMw_Kriegshammer2);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_Lester, 0, ITAR_SLN_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4;
};

func void Rtn_Start_4()
{
	TA_Sit_Campfire	(08,00,23,00, "NW_XARDAS_TOWER_LESTER");
    TA_Sit_Campfire	(23,00,08,00, "NW_XARDAS_TOWER_LESTER");
};
func void Rtn_Xardas_4()
{
	TA_Sleep	(08,00,23,00, "NW_XARDAS_TOWER_IN1_31");
    TA_Sleep	(23,00,08,00, "NW_XARDAS_TOWER_IN1_31");
};
func void Rtn_XardasWeg_4()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_XARDAS_TOWER_02");
    TA_Stand_Guarding	(23,00,08,00, "NW_XARDAS_TOWER_02");
};
func void Rtn_WaitForPlayer_4()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "LEVELCHANGE");
    TA_Stand_ArmsCrossed	(23,00,08,00, "LEVELCHANGE");
};
func void Rtn_WaitForShip_4()
{
	TA_Smalltalk	(08,00,23,00, "NW_CITY_WAY_TO_SHIP_19");
    TA_Smalltalk	(23,00,08,00, "NW_CITY_WAY_TO_SHIP_19");
};
func void Rtn_ShipOff_4()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_XARDAS_TOWER_02");
    TA_Stand_Guarding	(23,00,08,00, "NW_XARDAS_TOWER_02");
};
func void Rtn_Ship_4()
{	
	TA_Smalltalk	(08,00,23,00, "SHIP_CREW_19");
	TA_Smalltalk	(23,00,08,00, "SHIP_CREW_19");
};
