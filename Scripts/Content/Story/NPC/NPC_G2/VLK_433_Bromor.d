///******************************************************************************************
instance VLK_433_Bromor (Npc_Default)
{
	/// ------ General ------
	name								=	"Bromor";
	guild 								=	GIL_VLK;
	id 									=	433;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Dagger);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKE_Bromor);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Fingers, 0, ITAR_Vlk_L_14);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_433;
};

func void Rtn_Start_433()
{
	TA_Stand_ArmsCrossed	(08,00,20,00, "NW_CITY_PUFF_COUNTER");
    TA_Stand_ArmsCrossed	(20,00,08,00, "NW_CITY_PUFF_COUNTER");
};
