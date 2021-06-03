///******************************************************************************************
instance PIR_1394_IE_YellowPfeiffer (Npc_Default)
{
	/// ------ General ------
	name								=	"Yellow Pfeiffer";
	guild								=	GIL_NONE;
	id									=	1394;
	voice								=	9;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 5);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Inventory ------
	CreateInvItem (self, ItMi_IEDudelGelb);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Pfeiffer", Face_Pfeiffer, 0, -1);

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1394;
};

func void Rtn_Start_1394()
{
	TA_Stand_Guarding	(05,00,20,00, "WP_COOK_CAULDRON");
	TA_Stand_Guarding	(20,00,05,00, "WP_COOK_CAULDRON");
};
func void Rtn_Concert_1394()
{
	TA_Concert	(05,00,20,00, "WP_COOK_CAULDRON");
	TA_Concert	(20,00,05,00, "WP_COOK_CAULDRON");
};
