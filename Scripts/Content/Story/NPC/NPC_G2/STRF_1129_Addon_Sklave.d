///******************************************************************************************
instance STRF_1129_Addon_Sklave (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Sklave;
	guild								=	GIL_STRF;
	id									=	1129;
	voice								=	3;
	npctype								=	NPCTYPE_BL_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_NoFightParker]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+1, BodySkin_N, "Hum_Head_Psionic", Face_N_Weak_Asghan, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1129;
};

func void Rtn_Start_1129()
{
	TA_Pick_Ore	(08,00, 23,00, "ADW_MINE_TO_MC_04_B");
	TA_Pick_Ore	(23,00, 08,00, "ADW_MINE_TO_MC_04_B");
};
func void Rtn_Flucht_1129()
{
	TA_RunToWP	(08,00, 23,00, "ADW_BL_HOEHLE_02");
	TA_RunToWP	(23,00, 08,00, "ADW_BL_HOEHLE_02");
};
