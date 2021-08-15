///******************************************************************************************
instance Mil_306_Tuerwache (Npc_Default)
{
	/// ------ General ------
	name								=	"Strażnik domu sędziego";
	guild 								=	GIL_MIL;
	id 									=	306;
	voice 								=	7;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Fighter", Face_Normal00, 0, ITAR_MIL_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_306;
};

func void Rtn_Start_306()
{
	TA_Stand_Guarding	(08,00,18,45, "NW_CITY_JUDGE_GUARD_01");
	TA_Stand_Guarding	(18,45,22,00, "NW_CITY_UPTOWN_JUDGE_01");
    TA_Stand_Guarding	(22,00,08,00, "NW_CITY_JUDGE_GUARD_01");
};
