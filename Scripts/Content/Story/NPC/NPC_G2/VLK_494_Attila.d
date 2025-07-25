///******************************************************************************************
instance VLK_494_Attila (Npc_Default)
{
	/// ------ General ------
	name								=	"Attila";
	guild								=	GIL_VLK;
	id									=	494;
	voice								=	9;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_DropDeadAndKill]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Sld_Axe);
	EquipItem (self, itRw0_Crossbow_L_02);
	
	/// ------ Inventory ------
	CreateInvItem (self, ItKe_ThiefGuildKey_MIS);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_Tough_Santino, Teeth_Normal, ItAr_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_494;
};

func void Rtn_Start_494()
{
	TA_Stand_Guarding	(04,00, 22,00, "NW_CITY_HABOUR_POOR_AREA_BACK_ALLEY_02");
	TA_Stand_Guarding	(22,00, 04,00, "NW_CITY_HABOUR_POOR_AREA_BACK_ALLEY_02");
};
func void Rtn_After_494()
{
	TA_Stand_Guarding	(04,00, 22,00, "NW_CITY_HABOUR_POOR_AREA_CAULDRON");
	TA_Stand_Guarding	(22,00, 04,00, "NW_CITY_HABOUR_POOR_AREA_CAULDRON");
};
