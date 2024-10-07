///******************************************************************************************
instance STRF_1128_Addon_Sklave (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Sklave;
	guild								=	GIL_STRF;
	id									=	1128;
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
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+0, BodySkin_B, "Hum_Head_Thief", Face_B_Normal_Orik, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1128;
};

func void Rtn_Start_1128()
{
	TA_Pick_Ore	(08,00, 23,00, "ADW_MINE_19");
	TA_Pick_Ore	(23,00, 08,00, "ADW_MINE_19");
};
func void Rtn_Flucht_1128()
{
	TA_RunToWP	(08,00, 23,00, "ADW_BL_HOEHLE_02");
	TA_RunToWP	(23,00, 08,00, "ADW_BL_HOEHLE_02");
};
