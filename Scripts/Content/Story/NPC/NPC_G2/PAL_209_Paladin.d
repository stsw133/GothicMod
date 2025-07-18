///******************************************************************************************
instance Pal_209_Paladin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Ritter;
	guild								=	GIL_PAL;
	id									=	209;
	voice								=	4;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 55);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2H_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Fighter", Face_P_Normal_Fletcher, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_209;
};

func void Rtn_Start_209()
{
	TA_Practice_Sword	(07,10, 19,02, "NW_CITY_TRAIN_02");
	TA_Smalltalk		(19,02, 23,06, "NW_CITY_UPTOWN_HUT_03_01_B");
	TA_Sleep			(23,06, 07,10, "NW_CITY_LEOMAR_BED_04");
};
