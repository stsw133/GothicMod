///******************************************************************************************
instance KDF_506_Neoras (Npc_Default)
{
	/// ------ General ------
	name								=	"Neoras";
	guild								=	GIL_KDF;
	id									=	506;
	voice								=	1;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_NormalBart_Cronos, Teeth_Normal, ItAr_MAG_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_506;
};

func void Rtn_Start_506()
{
	TA_Potion_Alchemy	(08,00, 23,00, "NW_MONASTERY_ALCHEMY_01");
	TA_Potion_Alchemy	(23,00, 08,00, "NW_MONASTERY_ALCHEMY_01");
};
