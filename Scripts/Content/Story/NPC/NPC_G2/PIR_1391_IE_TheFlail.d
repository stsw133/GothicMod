///******************************************************************************************
instance PIR_1391_IE_TheFlail(Npc_Default)
{
	/// ------ General ------
	name								=	"The Flail";
	guild								=	GIL_NONE;
	id									=	1391;
	voice								=	3;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 5);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	CreateInvItem (self, ItMi_iedrum);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Flail", Face_N_Flail, Teeth_Normal, -1);
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1391;
};

func void Rtn_Start_1391()
{
	TA_Stand_Eating	(05,00, 20,00, "WP_WASH");
	TA_Stand_Eating	(20,00, 05,00, "WP_WASH");
};
func void Rtn_Concert_1391()
{
	TA_Concert	(05,00, 20,00, "WP_WASH");
	TA_Concert	(20,00, 05,00, "WP_WASH");
};
