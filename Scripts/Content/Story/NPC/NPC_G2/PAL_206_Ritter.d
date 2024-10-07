///******************************************************************************************
instance Pal_206_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Ritter;
	guild								=	GIL_PAL;
	id									=	206;
	voice								=	12;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 55);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_FatBald", Face_B_Normal_Kharim, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_206;
};

func void Rtn_Start_206()
{
	TA_Stand_ArmsCrossed	(07,14, 19,00, "NW_CITY_UPTOWN_PATH_06_B");
	TA_Smalltalk			(19,00, 23,01, "NW_CITY_UPTOWN_HUT_03_05");
	TA_Sleep				(23,01, 07,14, "NW_CITY_LEOMAR_BED_01");
};
