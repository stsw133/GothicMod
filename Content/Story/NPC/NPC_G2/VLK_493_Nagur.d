//******************************************************************************************
instance VLK_493_Nagur (Npc_Default)
{
	// ------ General ------
	name								=	"Nagur";
	guild 								=	GIL_VLK;
	id 									=	493;
	voice 								=	8;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_ToughGuy]					=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Sword);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal24, 0, ITAR_Vlk_L_03);
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_493;
};

FUNC VOID Rtn_Start_493()
{
	TA_Sit_Chair	(08,00,23,00, "NW_CITY_HABOUR_TAVERN01_02");
    TA_Sit_Chair	(23,00,08,00, "NW_CITY_HABOUR_TAVERN01_02");
};
FUNC VOID Rtn_Prison_493()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "NW_CITY_HABOUR_KASERN_NAGUR");
    TA_Stand_ArmsCrossed	(23,00,08,00, "NW_CITY_HABOUR_KASERN_NAGUR");
};
