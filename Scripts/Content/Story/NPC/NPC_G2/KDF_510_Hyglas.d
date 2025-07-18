///******************************************************************************************
instance KDF_510_Hyglas (Npc_Default)
{
	/// ------ General ------
	name								=	"Hyglas";
	guild								=	GIL_KDF;
	id									=	510;
	voice								=	14;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_NormalBart09, Teeth_Normal, ItAr_MAG_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_510;
};

func void Rtn_Start_510()
{
	TA_Read_Bookstand	(08,00, 23,00, "NW_MONASTERY_RUNEMAKER_08");
	TA_Read_Bookstand	(23,00, 08,00, "NW_MONASTERY_RUNEMAKER_08");
};
