///******************************************************************************************
instance PIR_1357_Addon_Garett (Npc_Default)
{
	/// ------ General ------
	name								=	"Garett";
	guild 								=	GIL_PIR;
	id 									=	1357;
	voice 								=	9;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Piratensaebel);

	/// ------ Inventory ------
	CreateInvItem (self, ItBe_Ako_01);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Psionic", Face_Normal32, 0, ITAR_PIR_L);
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1357;
};

func void Rtn_Start_1357()
{
	TA_Stand_WP			(08,00,20,00, "ADW_PIRATECAMP_HUT1_01");
	TA_Stand_Drinking	(20,00,08,00, "ADW_PIRATECAMP_BEACH_10");
};
