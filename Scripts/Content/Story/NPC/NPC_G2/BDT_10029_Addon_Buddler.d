///******************************************************************************************
instance BDT_10029_Addon_Buddler (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buddler;
	guild								=	GIL_BDT;
	id									=	10029;
	voice								=	6;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_Jackal, Teeth_Normal, ItAr_Prisoner_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10029;
};

func void Rtn_Start_10029()
{
	TA_Stand_Drinking	(06,00, 12,00, "ADW_MINE_25");
	TA_Stand_Drinking	(12,00, 06,00, "ADW_MINE_25");
};
func void Rtn_Work_10029()
{
	TA_Pick_Ore	(08,00, 23,00, "ADW_MINE_PICK_01");
	TA_Pick_Ore	(23,00, 08,00, "ADW_MINE_PICK_01");
};
