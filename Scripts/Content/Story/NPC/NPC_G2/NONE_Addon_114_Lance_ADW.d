///******************************************************************************************
instance NONE_Addon_114_Lance_ADW (Npc_Default)
{
	/// ------ General ------
	name								=	"Lance";
	guild								=	GIL_NONE;
	id									=	114;
	voice								=	3;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_IsRanger;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 25);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	EquipItem (self, ItRw_Sld_Bow);
	CreateInvItem (self, ItRi_Ranger_Lance);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal02, Teeth_Normal, ItAr_Ranger_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_114;
};

func void Rtn_PreStart_114()
{
	TA_Stand_ArmsCrossed	(08,00, 22,00, "ADW_PATH_TO_LOCH_00");
	TA_Stand_ArmsCrossed	(22,00, 08,00, "ADW_PATH_TO_LOCH_00");
};
