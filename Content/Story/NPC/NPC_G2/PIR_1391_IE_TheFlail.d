//******************************************************************************************
instance PIR_1391_IE_TheFlail(Npc_Default)
{
	// ------ General ------
	name								=	"The Flail";
	guild								=	GIL_NONE;
	id									=	1391;
	voice								=	3;
	flags								=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 4);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Inventory ------
	CreateInvItem (self, ItMi_iedrum);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Flail", Face_Flail, 0, -1);

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1391;
};

FUNC VOID Rtn_Start_1391()
{
	TA_Stand_Eating	(05,00,20,00, "WP_WASH");
	TA_Stand_Eating	(20,00,05,00, "WP_WASH");
};
FUNC VOID Rtn_Concert_1391()
{
	TA_Concert	(05,00,20,00, "WP_WASH");
	TA_Concert	(20,00,05,00, "WP_WASH");
};
