///******************************************************************************************
instance DJG_731_ToterDrachenjaeger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_ToterDrachenjaeger;
	guild								=	GIL_DJG;
	id									=	731;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_SLD_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_FatBald", Face_B_Normal_Orik, Teeth_Normal, ItAr_DJG_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_731;
};

func void Rtn_Start_731()
{
	TA_Sit_Bench	(08,00, 23,00, "OW_PATH_064");
	TA_Sit_Bench	(23,00, 08,00, "OW_PATH_064");
};
