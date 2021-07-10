///******************************************************************************************
instance SLD_801_Torlof (Npc_Default)
{
	/// ------ General ------
	name								=	"Torlof";
	guild 								=	GIL_SLD;
	id 									=	801;
	voice 								=	1;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Medium-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Sld_Sword);
	EquipItem (self, ItRw_Sld_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Pony", Face_Torlof, 0, ITAR_SLD_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_801;
};

func void Rtn_PreStart_801()
{
	TA_Stand_Guarding	(08,00,22,00, "NW_BIGFARM_TORLOF");
	TA_Stand_Guarding	(22,00,08,00, "NW_BIGFARM_TORLOF");
};
func void Rtn_Start_801()
{
	TA_Stand_Guarding	(08,00,19,00, "NW_BIGFARM_TORLOF");
	TA_Sit_Chair		(19,00,23,00, "NW_BIGFARM_HOUSE_UP2_07");
    TA_Sleep			(23,00,08,00, "NW_BIGFARM_HOUSE_UP2_02");		
};
func void Rtn_WaitForShipCaptain_801()
{
	TA_Sit_Bench	(08,00,20,00, "NW_WAITFOR_SHIP_CAPTAIN"); 
    TA_Sit_Bench	(20,00,08,00, "NW_WAITFOR_SHIP_CAPTAIN");	
};
func void Rtn_AllOnBoard_801()
{
	TA_Stand_WP	(08,00,23,00, "SHIP_CREW_CAPTAIN");
	TA_Sleep	(23,00,08,00, "SHIP_IN_06");
};
