///******************************************************************************************
instance Pal_291_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Ritter;
	guild								=	GIL_PAL;
	id									=	291;
	voice								=	4;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1H_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Fighter", Face_P_Tough_Torrez, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_291;
};

func void Rtn_Start_291()
{
	TA_Practice_Sword	(08,00, 23,00, "NW_CITY_PALCAMP_01");
	TA_Practice_Sword	(23,00, 08,00, "NW_CITY_PALCAMP_01");
};
