///******************************************************************************************
instance STRF_1130_Addon_Sklave (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Sklave;
	guild								=	GIL_STRF;
	id									=	1130;
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
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+0, BodySkin_L, "Hum_Head_Psionic", Face_L_ToughBart_Quentin, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1130;
};

func void Rtn_Start_1130()
{
	TA_Pick_Ore	(08,00, 23,00, "ADW_MINE_SLAVE_01");
	TA_Pick_Ore	(23,00, 08,00, "ADW_MINE_SLAVE_01");
};
func void Rtn_Flucht_1130()
{
	TA_RunToWP	(08,00, 23,00, "ADW_BL_HOEHLE_02");
	TA_RunToWP	(23,00, 08,00, "ADW_BL_HOEHLE_02");
};
