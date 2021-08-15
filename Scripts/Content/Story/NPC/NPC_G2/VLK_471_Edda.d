///******************************************************************************************
instance VLK_471_Edda (Npc_Default)
{
	/// ------ General ------
	name								=	"Edda";
	guild 								=	GIL_VLK;
	id 									=	471;
	voice 								=	17;
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
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_B, "Hum_Head_Babe", FaceBabe_Edda, Teeth_Pretty, ITAR_WD_M_05);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_471;
};

func void Rtn_Start_471()
{
	TA_Cook_Cauldron	(08,00,22,00, "NW_CITY_HABOUR_POOR_AREA_CAULDRON");
    TA_Cook_Cauldron	(22,00,08,00, "NW_CITY_HABOUR_POOR_AREA_CAULDRON");
};
