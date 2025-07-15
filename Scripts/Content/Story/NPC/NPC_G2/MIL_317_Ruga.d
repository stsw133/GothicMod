///******************************************************************************************
instance Mil_317_Ruga (Npc_Default)
{
	/// ------ General ------
	name								=	"Ruga";
	guild								=	GIL_MIL;
	id									=	317;
	voice								=	11;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Mil_Sword);
	EquipItem (self, itRw0_Crossbow_L_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_City_Tower_03);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_NormalBart03, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_317;
};

func void Rtn_Start_317()
{
	TA_Stand_Drinking	(07,00, 20,00, "KASERNE");
	TA_Sit_Chair		(20,00, 07,00, "NW_CITY_HABOUR_KASERN_15_B");
};
