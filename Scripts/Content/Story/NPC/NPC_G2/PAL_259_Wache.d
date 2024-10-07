///******************************************************************************************
instance PAL_259_Wache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Wache;
	guild								=	GIL_PAL;
	id									=	259;
	voice								=	4;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_FatBald", Face_P_ToughBald_Nek, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_259;
};

func void Rtn_Start_259()
{
	TA_Stand_Guarding	(08,00, 23,00, "OC_OPEN_ROOM_GUARD_01");
	TA_Stand_Guarding	(23,00, 08,00, "OC_OPEN_ROOM_GUARD_01");
};
