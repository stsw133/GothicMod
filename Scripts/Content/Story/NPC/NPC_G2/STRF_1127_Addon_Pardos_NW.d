///******************************************************************************************
instance STRF_1127_Addon_Pardos_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Pardos";
	guild								=	GIL_OUT;
	id									=	1127;
	voice								=	3;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2H_Axe_L_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Weak_Asghan, Teeth_Normal, ItAr_SLD_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1127;
};

func void Rtn_Start_1127()
{
	TA_Sit_Throne	(00,00, 12,00, "NW_FARM3_HOUSE_IN_NAVI_2");
	TA_Sit_Throne	(12,00, 00,00, "NW_FARM3_HOUSE_IN_NAVI_2");
};
