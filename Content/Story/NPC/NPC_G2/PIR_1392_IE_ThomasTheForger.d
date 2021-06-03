///******************************************************************************************
instance PIR_1392_IE_ThomasTheForger (Npc_Default)
{
	/// ------ General ------
	name								=	"Thomas the forger";
	guild								=	GIL_NONE;
	id									=	1392;
	voice								=	8;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 5);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	CreateInvItem (self, ItMi_IECello);
//	CreateInvItem (self, ItMiCellobow);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thomas", Face_Thomas, 0, -1);

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1392;
};

func void Rtn_Start_1392()
{
	TA_Stand_Eating	(05,00,20,00, "WP_COOK_PAN");
	TA_Stand_Eating	(20,00,05,00, "WP_COOK_PAN");
};
func void Rtn_Concert_1392()
{
	TA_Concert	(05,00,20,00, "WP_COOK_PAN");
	TA_Concert	(20,00,05,00, "WP_COOK_PAN");
};
