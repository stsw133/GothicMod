///******************************************************************************************
instance PC_Mage_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Milten";
	guild								=	GIL_KDF;
	id									=	22;
	voice								=	3;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	aivar[AIV_PARTYMEMBER]				=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Milten, Teeth_Normal, ItAr_MAG_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_22;
};

func void Rtn_Start_22()
{
	TA_Smalltalk	(08,00, 23,00, "SHIP_CREW_19");
	TA_Smalltalk	(23,00, 08,00, "SHIP_CREW_19");
};
func void Rtn_UNDEADDRAGONDEAD_22()
{
	TA_Stand_WP	(08,00, 23,00, "SKELETTE");
	TA_Stand_WP	(23,00, 08,00, "SKELETTE");
};
func void Rtn_SittingShipDI_22()
{
	TA_Sit_Bench	(08,00, 23,00, "SHIP_CREW_19");
	TA_Sit_Bench	(23,00, 08,00, "SHIP_CREW_19");
};
