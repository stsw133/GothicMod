///******************************************************************************************
instance STRF_1138_Addon_Sklave (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Sklave;
	guild								=	GIL_STRF;
	id									=	1138;
	voice								=	3;
	npctype								=	NPCTYPE_BL_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 10);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+0, BodySkin_P, "Hum_Head_Bald", Face_P_Normal01, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1138;
};

func void Rtn_Start_1138()
{
	TA_Pick_Ore	(08,00, 23,00, "ADW_MINE_PICK_03");
	TA_Pick_Ore	(23,00, 08,00, "ADW_MINE_PICK_03");
};
