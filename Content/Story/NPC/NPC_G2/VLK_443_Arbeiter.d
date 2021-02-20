//******************************************************************************************
instance VLK_443_Arbeiter (Npc_Default)
{
	// ------ General ------
	name								=	"Arbeiter";
	guild 								=	GIL_VLK;
	id 									=	443;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Aivars ------
	aivar[AIV_ToughGuy]					=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_Mace_L_04);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal54, 0, ITAR_Bau_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_443;
};

FUNC VOID Rtn_Start_443()
{
	TA_Saw			(04,55,19,05, "NW_CITY_HABOUR_08");
    TA_Smalltalk	(19,05,04,55, "NW_CITY_HABOUR_02");
};
