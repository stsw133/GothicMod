///******************************************************************************************
instance PAL_2007_Leiche (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_RITTER;
	guild								=	GIL_PAL;
	id									=	2007;
	voice								=	10;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItMi_OldCoin);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart_Swiney, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_2007;
};

func void Rtn_Start_2007()
{
	TA_Stand_Guarding	(08,00, 23,00, "OW_RITTER_LEICHE_02");
	TA_Stand_Guarding	(23,00, 08,00, "OW_RITTER_LEICHE_02");
};
