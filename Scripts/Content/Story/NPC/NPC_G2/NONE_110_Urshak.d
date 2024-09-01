///******************************************************************************************
instance NONE_110_Urshak (NPC_Default)
{
	/// ------ General ------
	name								=	"Ur-Shak";
	guild								=	GIL_FRIENDLY_ORC;
	id									=	110;
	voice								=	18;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, ORCMALE, 0, default, "Orc_Head_Shaman", 52, default, ItAr_Orc_Shaman);
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_ORC;
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_110;
};

func void Rtn_PreStart_110()
{
	TA_Stand_WP	(08,00, 22,00, "OW_PATH_340");
	TA_Stand_WP	(22,00, 08,00, "OW_PATH_340");
};
func void Rtn_Start_110()
{
	TA_Stand_WP	(08,00, 22,00, "OW_HOSHPAK_04");
	TA_Stand_WP	(22,00, 08,00, "OW_HOSHPAK_04");
};
