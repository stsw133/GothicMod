///******************************************************************************************
instance Mil_312_Wulfgar (Npc_Default)
{
	/// ------ General ------
	name								=	"Wulfgar";
	guild								=	GIL_MIL;
	id									=	312;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_NormalBart06, Teeth_Normal, ItAr_MIL_H);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_312;
};

func void Rtn_PreStart_312()
{
	TA_Stand_ArmsCrossed	(06,55, 21,00, "NW_CITY_HABOUR_KASERN_CENTRE_01");
	TA_Sit_Throne			(21,00, 05,00, "NW_CITY_KASERN_BARRACK02_02");
	TA_Practice_Sword		(05,00, 06,55, "NW_CITY_HABOUR_KASERN_CENTRE_01");
};
func void Rtn_Start_312()
{
	TA_Stand_ArmsCrossed	(06,55, 21,00, "NW_CITY_HABOUR_KASERN_CENTRE_01");
	TA_Sit_Throne			(21,00, 00,07, "NW_CITY_KASERN_BARRACK02_02");
	TA_Smalltalk			(00,07, 05,00, "NW_CITY_HABOUR_KASERN_OFFICE");
	TA_Practice_Sword		(05,00, 06,55, "NW_CITY_HABOUR_KASERN_CENTRE_01");
};
