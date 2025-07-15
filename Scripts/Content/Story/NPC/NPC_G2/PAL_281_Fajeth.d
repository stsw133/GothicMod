///******************************************************************************************
instance PAL_281_Fajeth (Npc_Default)
{
	/// ------ General ------
	name								=	"Fajeth";
	guild								=	GIL_OUT;
	id									=	281;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Pal_Sword);
	EquipItem (self, ItRw0_Crossbow_L_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_Fingers, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_281;
};

func void Rtn_Start_281()
{
	TA_Stand_Guarding	(08,00, 23,00, "OW_NEWMINE_09");
	TA_Stand_Guarding	(23,00, 08,00, "OW_NEWMINE_09");
};
