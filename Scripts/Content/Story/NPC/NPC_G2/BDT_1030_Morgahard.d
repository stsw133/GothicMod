///******************************************************************************************
instance BDT_1030_Morgahard (Npc_Default)
{
	/// ------ General ------
	name								=	"Morgahard";
	guild								=	GIL_OUT;
	id									=	1030;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_SLD_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItWr_RichterKomproBrief_MIS);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Bartholo, Teeth_Normal, ItAr_BDT_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1030;
};

func void Rtn_Start_1030()
{
	TA_Smalltalk	(08,00, 23,00, "NW_BIGFARM_HOUSE_OUT_05");
	TA_Smalltalk	(23,00, 08,00, "NW_BIGFARM_HOUSE_OUT_05");
};
