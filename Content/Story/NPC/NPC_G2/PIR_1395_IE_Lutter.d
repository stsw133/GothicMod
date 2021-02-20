//******************************************************************************************
instance PIR_1395_IE_Lutter (Npc_Default)
{
	// ------ General ------
	name								=	"Lutter";
	guild								=	GIL_NONE;
	id									=	1395;
	voice								=	7;
	flags								=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 4);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Inventory ------
	CreateInvItem (self, ItMi_IEDrumscheit);
	//CreateInvItem (self, ItMiCellobow);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Lutter", Face_Lutter, 0, -1);

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1395;
};

FUNC VOID Rtn_Start_1395()
{
	TA_Stand_Eating	(05,00,20,00, "WP_STAND");
	TA_Stand_Eating	(20,00,05,00, "WP_STAND");
};
FUNC VOID Rtn_Concert_1395()
{
	TA_Concert	(05,00,20,00, "WP_STAND");
	TA_Concert	(20,00,05,00, "WP_STAND");
};
