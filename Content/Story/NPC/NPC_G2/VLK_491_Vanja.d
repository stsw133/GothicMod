//******************************************************************************************
instance VLK_491_Vanja (Npc_Default)
{
	// ------ General ------
	name								=	"Vanja";
	guild 								=	GIL_VLK;
	id 									=	491;
	voice 								=	17;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_ToughGuy]					=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Dressed+0, BodySkin_B, "Hum_Head_Babe", FaceBabe_Chani, Teeth_Pretty, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_491;
};

FUNC VOID Rtn_Start_491()
{
	TA_Smalltalk	(08,00,23,00, "NW_CITY_HABOUR_PUFF_VANJA");
    TA_Smalltalk	(23,00,08,00, "NW_CITY_HABOUR_PUFF_VANJA");
};
FUNC VOID Rtn_Alone_491()
{
	TA_Sweep_FP	(08,00,23,00, "NW_CITY_HABOUR_PUFF_VANJA");
    TA_Sweep_FP	(23,00,08,00, "NW_CITY_HABOUR_PUFF_VANJA");
};
