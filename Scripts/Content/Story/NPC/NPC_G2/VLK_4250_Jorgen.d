///******************************************************************************************
instance VLK_4250_Jorgen (Npc_Default)
{
	/// ------ General ------
	name								=	"Jorgen";
	guild								=	GIL_NONE;
	id									=	4250;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_Tough_Skip, Teeth_Normal, ItAr_VLK_L_03);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4250;
};

func void Rtn_Start_4250()
{
	TA_Stand_ArmsCrossed	(08,00, 20,00, "NW_MONASTERY_BRIDGE_01");
	TA_Stand_ArmsCrossed	(20,00, 08,00, "NW_MONASTERY_BRIDGE_01");
};
func void Rtn_Kloster_4250()
{
	TA_Stand_ArmsCrossed	(08,00, 20,00, "NW_MONASTERY_PLACE_06");
	TA_Sleep				(20,00, 08,00, "NW_MONASTERY_NOVICE04_06");
};
func void Rtn_RausAusKloster_4250()
{
	TA_Stand_ArmsCrossed	(08,00, 20,00, "NW_BIGFARM_KITCHEN_OUT_06");
	TA_Stand_ArmsCrossed	(20,00, 08,00, "NW_BIGFARM_KITCHEN_OUT_06");
};
func void Rtn_WaitForShipCaptain_4250()
{
	TA_Sit_Bench	(08,00, 20,00, "NW_WAITFOR_SHIP_CAPTAIN");
	TA_Sit_Bench	(20,00, 08,00, "NW_WAITFOR_SHIP_CAPTAIN");
};
func void Rtn_AllOnBoard_4250()
{
	TA_Stand_WP	(08,00, 23,00, "SHIP_CREW_CAPTAIN");
	TA_Sleep	(23,00, 08,00, "SHIP_IN_06");
};
