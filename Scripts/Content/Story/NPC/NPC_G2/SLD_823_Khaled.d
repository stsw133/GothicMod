///******************************************************************************************
instance SLD_823_Khaled (Npc_Default)
{
	/// ------ General ------
	name								=	"Khaled";
	guild								=	GIL_SLD;
	id									=	823;
	voice								=	11;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Sld_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Thief", Face_B_Thorus, Teeth_Normal, ItAr_SLD_H);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_823;
};

func void Rtn_Start_823()
{
	TA_Stand_Guarding	(07,55, 21,55, "NW_BIGFARM_HOUSE_12");
	TA_Stand_Eating		(21,55, 23,55, "NW_BIGFARM_HOUSE_UP2_06");
	TA_Sleep			(23,55, 07,55, "NW_BIGFARM_HOUSE_UP2_02");
};
