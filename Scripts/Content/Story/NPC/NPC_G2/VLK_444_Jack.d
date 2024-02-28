///******************************************************************************************
instance VLK_444_Jack (Npc_Default)
{
	/// ------ General ------
	name								=	"Jack";
	guild 								=	GIL_VLK;
	id 									=	444;
	voice 								=	14;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal02, 0, ITAR_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_444;
};

func void Rtn_Start_444()
{
	TA_Sit_Bench	(04,45,19,45, "NW_CITY_HABOUR_06_C");
    TA_Sit_Throne	(19,45,04,45, "NW_CITY_PUFF_THRONE");
};
func void Rtn_Lighthouse_444()
{
	TA_Sit_Throne	(08,00,20,00, "NW_LIGHTHOUSE_IN_03");
    TA_Sleep		(20,00,08,00, "NW_LIGHTHOUSE_IN_03");
};
func void Rtn_WaitForShipCaptain_444()
{
	TA_Sit_Bench	(08,00,20,00, "NW_WAITFOR_SHIP_CAPTAIN");
    TA_Sit_Bench	(00,00,08,00, "NW_WAITFOR_SHIP_CAPTAIN");
};
func void Rtn_AllOnBoard_444()
{
	TA_Stand_WP	(08,00,23,00, "SHIP_CREW_CAPTAIN");
	TA_Sleep	(23,00,08,00, "SHIP_IN_06");
};
