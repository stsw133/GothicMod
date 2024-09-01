///******************************************************************************************
instance Pal_293_Ritter (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Ritter;
	guild								=	GIL_PAL;
	id									=	293;
	voice								=	12;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Pal_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Fighter", Face_P_NormalBald, Teeth_Normal, ItAr_PAL_L);
	Mdl_SetModelFatness	(self, 1.5);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_293;
};

func void Rtn_Start_293()
{
	TA_Smalltalk	(08,00, 23,00, "NW_CITY_PALCAMP_15");
	TA_Smalltalk	(23,00, 08,00, "NW_CITY_PALCAMP_15");
};
