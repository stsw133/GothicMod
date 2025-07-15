///******************************************************************************************
instance Mil_306_Tuerwache (Npc_Default)
{
	/// ------ General ------
	name								=	"Stra¿nik domu sêdziego";
	guild								=	GIL_MIL;
	id									=	306;
	voice								=	7;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Fighter", Face_L_ToughBald01, Teeth_Normal, ItAr_MIL_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_306;
};

func void Rtn_Start_306()
{
	TA_Stand_Guarding	(08,00, 18,45, "NW_CITY_JUDGE_GUARD_01");
	TA_Stand_Guarding	(18,45, 22,00, "NW_CITY_UPTOWN_JUDGE_01");
	TA_Stand_Guarding	(22,00, 08,00, "NW_CITY_JUDGE_GUARD_01");
};
