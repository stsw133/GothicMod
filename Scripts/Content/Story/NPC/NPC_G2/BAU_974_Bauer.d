///******************************************************************************************
instance BAU_974_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild 								=	GIL_OUT;
	id 									=	974;
	voice 								=	1;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal40, 0, ITAR_BAU_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_974;
};

func void Rtn_Start_974()
{
	TA_Play_Lute	(08,00,22,00, "NW_TAVERNE_IN_07");
    TA_Play_Lute	(22,00,08,00, "NW_TAVERNE_IN_07");
};
func void Rtn_GregInTaverne_974()
{
	TA_Sit_Chair	(08,00,22,00, "NW_TAVERNE_IN_05");
    TA_Sit_Chair	(22,00,08,00, "NW_TAVERNE_IN_05");
};
