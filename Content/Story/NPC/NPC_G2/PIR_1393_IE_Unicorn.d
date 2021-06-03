///******************************************************************************************
instance PIR_1393_IE_Unicorn(Npc_Default)
{
	/// ------ General ------
	name								=	"Unicorn";
	guild								=	GIL_NONE;
	id									=	1393;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 5);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	CreateInvItem (self, ItMi_IELaute);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Unicorn", Face_Unicorn, 0, -1);

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1393;
};

func void Rtn_Start_1393()
{
	TA_Stand_Eating	(05,00,20,00, "WP_PICK");
	TA_Stand_Eating	(20,00,05,00, "WP_PICK");
};
func void Rtn_Concert_1393()
{
	TA_Concert	(05,00,20,00, "WP_PICK");
	TA_Concert	(20,00,05,00, "WP_PICK");
};
