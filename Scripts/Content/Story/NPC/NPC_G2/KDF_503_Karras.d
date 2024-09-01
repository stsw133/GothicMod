///******************************************************************************************
instance KDF_503_Karras (Npc_Default)
{
	/// ------ General ------
	name								=	"Karras";
	guild								=	GIL_KDF;
	id									=	503;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Pony", Face_L_NormalBart02, Teeth_Normal, ItAr_MAG_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_503;
};

func void Rtn_Start_503()
{
	TA_Read_Bookstand	(08,00, 23,00, "NW_MONASTERY_RUNEMAKER_02");
	TA_Read_Bookstand	(08,00, 23,00, "NW_MONASTERY_RUNEMAKER_02");
};
