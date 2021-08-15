///******************************************************************************************
instance VLK_476_Fenia (Npc_Default)
{
	/// ------ General ------
	name								=	"Fenia";
	guild 								=	GIL_VLK;
	id 									=	476;
	voice 								=	17;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe1", FaceBabe_Normal01, Teeth_Pretty, ITAR_WD_M_00);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_476;
};

func void Rtn_Start_476()
{
	TA_Stand_Guarding	(04,55,20,05, "NW_CITY_PATH_HABOUR_03_01");
    TA_Stomp_Herb		(20,05,22,05, "NW_CITY_HABOUR_POOR_AREA_PATH_01");
    TA_Sleep			(22,05,04,55, "NW_CITY_BED_HALVOR_WEIB");
};
