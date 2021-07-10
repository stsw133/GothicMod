///******************************************************************************************
instance VLK_420_Coragon (Npc_Default)
{
	/// ------ General ------
	name								=	"Coragon";
	guild 								=	GIL_VLK;
	id 									=	420;
	voice 								=	9;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal19, 0, ITAR_BARKEEPER);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_420;
};

func void Rtn_Start_420()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_CITY_TAVERN_IN_03");
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_CITY_TAVERN_IN_03");
};
