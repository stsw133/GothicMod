///******************************************************************************************
instance PAL_265_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_RITTER; 
	guild								=	GIL_PAL;
	id									=	265;
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
	EquipItem (self, ItRw_Mil_Crossbow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_NormalBart_Nefarius, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_265;
};

func void Rtn_Start_265()
{
	TA_Stand_Guarding	(08,00, 23,00, "OC_TO_GUARD");
	TA_Sit_Campfire		(23,00, 08,00, "OC_GUARD_ROOM_01_FIRE");
};
