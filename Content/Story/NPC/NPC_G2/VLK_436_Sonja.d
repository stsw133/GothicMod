//******************************************************************************************
instance VLK_436_Sonja (Npc_Default)
{
	// ------ General ------
	name								=	"Sonja";
	guild 								=	GIL_VLK;
	id 									=	436;
	voice 								=	16;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_ToughGuy]					=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Dressed+0, BodySkin_L, "Hum_Head_Babe6", FaceBabe_Normal00, Teeth_Pretty, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_436;
};

FUNC VOID Rtn_Start_436()
{
	TA_Sit_Throne	(08,00,23,00, "NW_CITY_PUFF_THRONE");
    TA_Sit_Throne	(23,00,08,00, "NW_CITY_PUFF_THRONE");
};
