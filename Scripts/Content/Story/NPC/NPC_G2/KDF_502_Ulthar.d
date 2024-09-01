///******************************************************************************************
instance KDF_502_Ulthar (Npc_Default)
{
	/// ------ General ------
	name								=	"Ulthar";
	guild								=	GIL_KDF;
	id									=	502;
	voice								=	5;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_FatBald", Face_L_NormalBart01, Teeth_Normal, ItAr_AMG_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_502;
};

func void Rtn_Start_502()
{
	TA_Sit_Throne	(08,00, 23,00, "NW_MONASTERY_THRONE_03");
	TA_Sit_Throne	(23,00, 08,00, "NW_MONASTERY_THRONE_03");
};
