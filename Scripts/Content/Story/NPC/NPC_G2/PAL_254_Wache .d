///******************************************************************************************
instance PAL_254_Wache  (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Ritter;
	guild								=	GIL_PAL;
	id									=	254;
	voice								=	4;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_FatBald", Face_P_NormalBald, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_254;
};

func void Rtn_Start_254()
{
	TA_Guard_Passage	(08,00, 23,00, "OC_GATE_GUARD_02");
	TA_Guard_Passage	(23,00, 08,00, "OC_GATE_GUARD_02");
};
