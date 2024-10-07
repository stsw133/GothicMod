///******************************************************************************************
instance DJG_715_Ferros (Npc_Default)
{
	/// ------ General ------
	name								=	"Feros";
	guild								=	GIL_DJG;
	id									=	715;
	voice								=	1;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Crossbow_M_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_FatBald", Face_B_Normal_Orik, Teeth_Normal, ItAr_DJG_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_715;
};

func void Rtn_Start_715()
{
	TA_Stand_Eating	(08,00, 23,00, "OC_JAN");
	TA_Stand_Eating	(23,00, 08,00, "OC_JAN");
};
