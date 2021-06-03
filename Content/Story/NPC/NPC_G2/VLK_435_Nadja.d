///******************************************************************************************
instance VLK_435_Nadja (Npc_Default)
{
	/// ------ General ------
	name								=	"Nadja";
	guild 								=	GIL_VLK;
	id 									=	435;
	voice 								=	16;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Dressed+2, BodySkin_N, "Hum_Head_Babe8", FaceBabe_Normal10, Teeth_Pretty, -1);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_435;
};

func void Rtn_Start_435()
{
	TA_Stand_Drinking	(05,00,17,00, "NW_PUFF_DANCE");
	TA_Dance			(17,00,21,00, "NW_PUFF_DANCE");
	TA_Stand_Drinking	(21,00,21,30, "NW_PUFF_DANCE");
    TA_Dance			(21,30,05,00, "NW_PUFF_DANCE");
};
func void Rtn_Dance_435()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_CITY_HABOUR_PUFF_NADJA");
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_CITY_HABOUR_PUFF_NADJA");
};
func void Rtn_Smoke_435()
{
	TA_Smoke_Joint	(05,00,17,00, "NW_PUFF_DANCE");
	TA_Dance		(17,00,21,00, "NW_PUFF_DANCE");
	TA_Smoke_Joint	(21,00,21,30, "NW_PUFF_DANCE");
    TA_Dance		(21,30,05,00, "NW_PUFF_DANCE");
};
func void Rtn_Tot_435 ()
{
	TA_Stand_Guarding	(00,00,12,00, "TOT");
	TA_Stand_Guarding	(12,00,00,00, "TOT");
};
