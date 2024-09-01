///******************************************************************************************
instance PAL_280_Tengron (Npc_Default)
{
	/// ------ General ------
	name								=	"Tengron";
	guild								=	GIL_OUT;
	id									=	280;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	EquipItem (self, ItRw_Mil_Crossbow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_ToughBald01, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_280;
};

func void Rtn_Start_280()
{
	TA_Stand_Guarding	(08,00, 23,00, "OW_NEWMINE_02");
	TA_Stand_Guarding	(23,00, 08,00, "OW_NEWMINE_02");
};
func void Rtn_RunAfterVirtualRefugee_280()
{
	TA_RunToWP	(08,00, 23,00, "OW_PATH_06_05");
	TA_RunToWP	(23,00, 08,00, "OW_PATH_06_05");
};
