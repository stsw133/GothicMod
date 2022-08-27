///******************************************************************************************
instance VLK_490_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	490;
	voice 								=	17;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe8", FaceBabe_Normal09, Teeth_Pretty, ITAR_Babe_VLK_M_00);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_490;
};

func void Rtn_Start_490()
{
	TA_Stand_Guarding	(08,00,22,00, "NW_CITY_HABOUR_04");
    TA_Stand_Guarding	(22,00,08,00, "NW_CITY_MERCHANT_SHOP01_IN_01");
};
