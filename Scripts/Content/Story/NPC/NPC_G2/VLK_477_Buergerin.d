///******************************************************************************************
instance VLK_477_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	477;
	voice 								=	17;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Initiate+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe1", FaceBabe_Normal11, Teeth_Pretty, ITAR_Babe_VLK_M_03);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_477;
};

func void Rtn_Start_477()
{
	TA_Stand_Eating	(05,05,11,55, "NW_CITY_PATH_HABOUR_03");
	TA_Stand_Eating	(11,55,14,05, "NW_CITY_WAY_TO_SHIP_01");
	TA_Stand_Eating	(14,05,15,55, "NW_CITY_PATH_HABOUR_03");
	TA_Stand_Eating	(15,55,19,05, "NW_CITY_WAY_TO_SHIP_01");
	TA_Cook_Stove	(19,05,21,05, "NW_CITY_BED_BRAHIM");
    TA_Sleep		(21,05,05,05, "NW_CITY_BED_BRAHIM");
};
