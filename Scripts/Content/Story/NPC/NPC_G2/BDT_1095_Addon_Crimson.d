///******************************************************************************************
instance BDT_1095_Addon_Crimson (Npc_Default)
{
	/// ------ General ------
	name								=	"Crimson";
	guild								=	GIL_BDT;
	id									=	1095;
	voice								=	10;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 75);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_Sense);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_NormalBart10, Teeth_Normal, ItAr_Smith);
	Mdl_SetModelFatness	(self, -2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1095;
};

func void Rtn_Start_1095()
{
	TA_Smith_Fire	(11,00, 14,00, "ADW_MINE_HOEHLE_03");
	TA_Smith_Fire	(14,00, 11,00, "ADW_MINE_HOEHLE_03");
};
