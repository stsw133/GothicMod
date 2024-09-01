///******************************************************************************************
instance STRF_1144_Addon_Sklave (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Sklave; 
	guild								=	GIL_STRF;
	id									=	1144;
	voice								=	3;
	npctype								=	NPCTYPE_BL_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 10);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Psionic", Face_N_Weak_Asghan, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1144;
};

func void Rtn_Start_1144()
{
	TA_Stand_WP	(08,00, 23,00, "BL_UP_PLACE_06_SIDE_02");
	TA_Stand_WP	(23,00, 08,00, "BL_UP_PLACE_06_SIDE_02");
};
