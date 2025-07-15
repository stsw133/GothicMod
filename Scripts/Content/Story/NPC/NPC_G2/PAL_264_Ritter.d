///******************************************************************************************
instance PAL_264_Ritter (Npc_Default)
{
	/// ------ General ------ 
	name								=	NAME_RITTER;
	guild								=	GIL_PAL;
	id									=	264;
	voice								=	9;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Pal_Sword);
	EquipItem (self, ItRw0_Crossbow_L_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_OC_Store);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Bald", Face_L_Ratford, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_264;
};

func void Rtn_Start_264()
{
	TA_Stand_Guarding	(08,00, 19,00, "OC_GUARD_STORE_01");
	TA_Stand_Guarding	(19,00, 08,00, "OC_GUARD_STORE_01");
};
