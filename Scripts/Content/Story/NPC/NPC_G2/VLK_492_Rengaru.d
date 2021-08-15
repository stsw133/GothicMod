///******************************************************************************************
instance VLK_492_Rengaru (Npc_Default)
{
	/// ------ General ------
	name								=	"Rengaru";
	guild 								=	GIL_VLK;
	id 									=	492;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);

	/// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 50);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Normal05, 0, ITAR_Vlk_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_492;
};

func void Rtn_Start_492()
{
	TA_Stand_ArmsCrossed	(05,15,20,15, "NW_CITY_MERCHANT_PATH_36");
    TA_Stand_Drinking		(20,15,05,15, "NW_CITY_MERCHANT_PATH_33_B");
};
func void Rtn_RunAway_492()
{
	TA_FleeToWP	(08,00,23,00, "NW_CITY_HABOUR_KASERN_05_01");
    TA_FleeToWP	(23,00,08,00, "NW_CITY_HABOUR_KASERN_05_01");
};
func void Rtn_Prison_492()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "NW_CITY_HABOUR_KASERN_RENGARU");
    TA_Stand_ArmsCrossed	(23,00,08,00, "NW_CITY_HABOUR_KASERN_RENGARU");
};
