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
	NpcFn_SetAttributesToLevel (self, 5);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	CreateInvItem (self, ItMi_IEDudelGelb);
	
	/// ------ Visuals ------
	NpcFn_SetVisual (self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pfeiffer", Face_N_Pfeiffer, Teeth_Normal, -1);
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1394;
};

func void Rtn_Start_1394()
{
	TA_Stand_Guarding	(05,00, 20,00, "WP_COOK_CAULDRON");
	TA_Stand_Guarding	(20,00, 05,00, "WP_COOK_CAULDRON");
};
func void Rtn_Concert_1394()
{
	TA_Concert	(05,00, 20,00, "WP_COOK_CAULDRON");
	TA_Concert	(20,00, 05,00, "WP_COOK_CAULDRON");
};
