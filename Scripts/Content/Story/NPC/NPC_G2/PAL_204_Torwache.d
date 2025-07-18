///******************************************************************************************
instance Pal_204_Torwache (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Torwache;
	guild								=	GIL_PAL;
	id									=	204;
	voice								=	9;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_Ambient;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 55);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2H_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Whistler, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 0.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_204;
};

func void Rtn_Start_204()
{
	TA_Stand_Halberd	(08,00, 23,00, "NW_CITYHALL_GUARD_01");
	TA_Stand_Halberd	(23,00, 08,00, "NW_CITYHALL_GUARD_01");
};
