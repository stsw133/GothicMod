///******************************************************************************************
instance VLK_456_Abuyin (Npc_Default)
{
	/// ------ General ------
	name								=	"Abuyin";
	guild 								=	GIL_VLK;
	id 									=	456;
	voice 								=	13;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Dagger);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Bald", Face_Normal05, 0, ITAR_Vlk_L_08);
	Mdl_SetModelFatness	(self, 0);

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_456;
};

func void Rtn_Start_456()
{
	TA_Stand_ArmsCrossed	(07,20,01,20, "NW_CITY_MERCHANT_BENCH_02");
    TA_Sleep				(01,20,07,20, "NW_CITY_HOTEL_BED_05");
};
