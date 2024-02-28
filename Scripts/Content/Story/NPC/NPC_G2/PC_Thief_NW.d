///******************************************************************************************
instance PC_Thief_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Diego";
	guild 								=	GIL_NONE;
	id 									=	21;
	voice 								=	11;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_SLD_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Thief", Face_Diego, 0, ITAR_VLK_L_02);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_21;
};

func void Rtn_Start_21()
{
	TA_Stand_WP	(08,00,23,00, "NW_CITY_MERCHANT_TRADE_02");
	TA_Stand_WP	(23,00,08,00, "NW_CITY_MERCHANT_TRADE_02");
};
func void Rtn_Gerbrandt_21()
{
	TA_Stand_WP	(08,00,23,00, "NW_CITY_UPTOWN_PATH_23");
	TA_Stand_WP	(23,00,08,00, "NW_CITY_UPTOWN_PATH_23");
};
func void Rtn_WAITFORSHIP_21()
{
	TA_Smalltalk	(08,00,23,00, "NW_WAITFOR_SHIP_05");
	TA_Smalltalk	(23,00,08,00, "NW_WAITFOR_SHIP_05");
};
func void Rtn_SHIP_21()
{
	TA_Smalltalk	(08,00,23,00, "SHIP_CREW_05");
	TA_Smalltalk	(23,00,08,00, "SHIP_CREW_05");
};
