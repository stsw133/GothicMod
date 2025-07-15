///******************************************************************************************
instance VLK_456_Abuyin (Npc_Default)
{
	/// ------ General ------
	name								=	"Abuyin";
	guild								=	GIL_VLK;
	id									=	456;
	voice								=	13;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_VLK_Dagger);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_Normal_Sharky, Teeth_Normal, ItAr_Vlk_L_08);
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_456;
};

func void Rtn_Start_456()
{
	TA_Stand_ArmsCrossed	(07,20, 01,20, "NW_CITY_MERCHANT_BENCH_02");
	TA_Sleep				(01,20, 07,20, "NW_CITY_HOTEL_BED_05");
};
