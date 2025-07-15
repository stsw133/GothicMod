///******************************************************************************************
instance KDF_509_Isgaroth (Npc_Default)
{
	/// ------ General ------
	name								=	"Isgaroth";
	guild								=	GIL_KDF;
	id									=	509;
	voice								=	1;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 90);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Tough_Okyl, Teeth_Normal, ItAr_MAG_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_509;
};

func void Rtn_Start_509()
{
	TA_Pray_Innos_FP	(06,00, 21,00, "NW_MONASTERY_SHRINE_04");
	TA_Sit_Bench		(21,00, 06,00, "NW_MONASTERY_SHRINE_05");
};
