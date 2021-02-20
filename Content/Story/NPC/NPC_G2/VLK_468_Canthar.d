//******************************************************************************************
instance VLK_468_Canthar (Npc_Default)
{
	// ------ General ------
	name								=	"Canthar";
	guild 								=	GIL_NONE;
	id 									=	468;
	voice 								=	9;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_SWORD);

	// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 50);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal56, 0, ITAR_Vlk_L_13);
	Mdl_SetModelFatness	(self, 1.8);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_468;
};

FUNC VOID Rtn_PreStart_468()
{
	TA_Sit_Bench	(08,00,23,00, "NW_FARM1_PATH_CITY_SHEEP_05");
   	TA_Sit_Bench	(23,00,08,00, "NW_FARM1_PATH_CITY_SHEEP_05");
};
FUNC VOID Rtn_Start_468()
{
	TA_Sit_Bench		(07,45,19,45, "NW_CITY_MERCHANT_PATH_30");
	TA_Smoke_Waterpipe	(19,45,00,45, "NW_CITY_RAUCH_05");
   	TA_Sleep			(00,45,07,45, "NW_CITY_HOTEL_BED_01");
};
FUNC VOID Rtn_Marktstand_468()
{
	TA_Stand_ArmsCrossed	(07,45,19,45, "NW_CITY_SARAH");
    TA_Smoke_Waterpipe  	(19,45,00,45, "NW_CITY_RAUCH_05");
   	TA_Sleep				(00,45,07,45, "NW_CITY_HOTEL_BED_01");
};
FUNC VOID Rtn_Knast_468()
{
	TA_Sit_Bench	(08,00,23,00, "NW_CITY_HABOUR_KASERN_RENGARU");
    TA_Sit_Bench	(23,00,08,00, "NW_CITY_HABOUR_KASERN_RENGARU");
};
