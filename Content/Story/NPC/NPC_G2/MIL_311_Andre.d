//******************************************************************************************
instance Mil_311_Andre (Npc_Default)
{
	// ------ General ------
	name								=	"Andre";
	guild 								=	GIL_MIL;
	id 									=	311;
	voice 								=	8;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Master-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;	

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal61, 0, ITAR_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_311;
};

FUNC VOID Rtn_PreStart_311()
{
	TA_Stand_Guarding	(00,00,12,00, "NW_CITY_HABOUR_KASERN_MAIN_ENTRY");
	TA_Stand_Guarding	(12,00,00,00, "NW_CITY_HABOUR_KASERN_MAIN_ENTRY");
};
FUNC VOID Rtn_Start_311()
{
	TA_Read_Bookstand	(08,00,00,10, "NW_CITY_ANDRE");
    TA_Smalltalk		(00,10,05,00, "NW_CITY_ANDRE_SMALLTALK");
    TA_Read_Bookstand	(05,00,08,00, "NW_CITY_ANDRE");
};
