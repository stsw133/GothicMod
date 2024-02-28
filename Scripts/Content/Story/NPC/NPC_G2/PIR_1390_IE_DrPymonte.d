///******************************************************************************************
instance PIR_1390_IE_DrPymonte (Npc_Default)
{
	/// ------ General ------
	name								=	"Dr. Pymonte";
	guild								=	GIL_NONE;
	id									=	1390;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 5);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	CreateInvItem (self, ItMi_IEHarfe);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pymonte", Face_Pymonte, 0, -1);

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1390;
};

func void Rtn_Start_1390()
{
	TA_Stand_Eating	(05,00,20,00, "WP_COOK_CAULDRON");
	TA_Stand_Eating	(20,00,05,00, "WP_COOK_CAULDRON");
};
func void Rtn_Concert_1390()
{
	TA_Concert	(05,00,20,00, "WP_COOK_CAULDRON");
	TA_Concert	(20,00,05,00, "WP_COOK_CAULDRON");
};
