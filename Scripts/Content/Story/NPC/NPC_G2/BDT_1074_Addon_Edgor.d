///******************************************************************************************
instance BDT_1074_Addon_Edgor (Npc_Default)
{
	/// ------ General ------
	name								=	"Edgor";
	guild								=	GIL_BDT;
	id									=	1074;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Sld_Sword);
	EquipItem (self, ItRw0_Bow_M_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_N_NormalBart20, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1074;
};

func void Rtn_Start_1074()
{
	TA_Sit_Campfire	(09,00, 12,00, "ADW_BANDIT_VP1_09");
	TA_Sit_Campfire	(12,00, 09,00, "ADW_BANDIT_VP1_09");
};
