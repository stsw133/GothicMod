///******************************************************************************************
instance BDT_10028_Addon_Buddler (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buddler;
	guild								=	GIL_BDT;
	id									=	10028;
	voice								=	12;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_ToughBald, Teeth_Normal, ItAr_Prisoner_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10028;
};

func void Rtn_Start_10028()
{
	TA_Smalltalk	(06,00, 12,00, "ADW_MINE_22");
	TA_Smalltalk	(12,00, 06,00, "ADW_MINE_22");
};
func void Rtn_Work_10028()
{
	TA_Pick_Ore	(08,00, 23,00, "ADW_MINE_PICK_03");
	TA_Pick_Ore	(23,00, 08,00, "ADW_MINE_PICK_03");
};
