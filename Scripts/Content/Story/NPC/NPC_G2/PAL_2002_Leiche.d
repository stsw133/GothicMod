///******************************************************************************************
instance PAL_2002_Leiche (Npc_Default)
{
	/// ------ General ------
	name								=	"Silvestro";
	guild								=	GIL_NONE;
	id									=	2002;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	CreateInvItem (self, ItWr_Silvestro_MIS);
	CreateInvItems (self, ItPO_Mana_02, 2);
	CreateInvItems (self, ItMi_Gold, 100);
	CreateInvItems (self, ItPo_Health_02, 2);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal20, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_2002;
};

func void Rtn_Start_2002()
{
	TA_Stand_Guarding	(08,00, 23,00, "OW_MINE3_LEICHE_01");
	TA_Stand_Guarding	(23,00, 08,00, "OW_MINE3_LEICHE_01");
};
