///******************************************************************************************
instance VLK_482_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	482;
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
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_BabeHair", FaceBabe_Servant, Teeth_Pretty, ITAR_WD_M_05);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_482;
};

func void Rtn_Start_482()
{
	TA_Smalltalk	(12,00,16,00, "NW_CITY_HABOUR_STOMPER_01");
    TA_Stomp_Herb	(16,00,20,00, "NW_CITY_HABOUR_STOMPER_01");
    TA_Smalltalk	(20,00,00,00, "NW_CITY_HABOUR_SMALLTALK_02");
    TA_Sleep		(00,00,05,00, "NW_CITY_HABOUR_HUT_06_BED_01");
};
