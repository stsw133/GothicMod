///******************************************************************************************
instance PAL_273_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_RITTER;
	guild								=	GIL_PAL;
	id									=	273;
	voice								=	4;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 75);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Mordrag, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_273;
};

func void Rtn_Start_273()
{
	TA_Smalltalk	(08,00, 23,00, "OC_TO_MAGE");
	TA_Smalltalk	(23,00, 08,00, "OC_KNECHTCAMP_02");
};
