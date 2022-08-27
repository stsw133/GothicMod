///******************************************************************************************
instance VLK_472_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	472;
	voice 								=	16;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_BabeHair", FaceBabe_Servant, Teeth_Pretty, ITAR_Babe_VLK_M_00);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_472;
};

func void Rtn_Start_472()
{
	TA_Smalltalk	(05,00,12,35, "NW_CITY_HABOUR_JACK");
    TA_Smalltalk	(12,35,18,00, "NW_CITY_HABOUR_POOR_AREA_01");
    TA_Sweep_FP		(18,00,22,00, "NW_CITY_HABOUR_POOR_AREA_HUT_07_01");
    TA_Sleep		(22,00,05,00, "NW_CITY_HABOUR_POOR_AREA_HUT_07_BED_01");
};
