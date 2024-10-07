///******************************************************************************************
instance PIR_1396_IE_Flex (Npc_Default)
{
	/// ------ General ------
	name								=	"Flex";
	guild								=	GIL_NONE;
	id									=	1396;
	voice								=	13;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 5);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	CreateInvItem (self, ItMi_IEDudelBlau);
	
	/// ------ Visuals ------
	NpcFn_SetVisual (self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Flex", Face_N_Flex, Teeth_Normal, -1);
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1396;
};

func void Rtn_Start_1396()
{
	TA_Stand_Eating	(05,00, 20,00, "WP_POTION_ALCHEMY");
	TA_Stand_Eating	(20,00, 05,00, "WP_POTION_ALCHEMY");
};
func void Rtn_Concert_1396()
{
	TA_Concert	(05,00, 20,00, "WP_POTION_ALCHEMY");
	TA_Concert	(20,00, 05,00, "WP_POTION_ALCHEMY");
};
