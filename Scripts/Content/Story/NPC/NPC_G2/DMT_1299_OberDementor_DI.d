///******************************************************************************************
instance DMT_1299_OberDementor_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Czarny mag";
	guild								=	GIL_DMT;
	id									=	1299;
	voice								=	9;
	voicepitch							=	-3;
	npctype								=	NPCTYPE_MAIN;
	bodyStateInterruptableOverride		=	true;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	aivar[AIV_EnemyOverride]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, 90);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItWr_LastDoorToUndeadDrgDI_MIS);
	CreateInvItem (self, ItKe_ChestMasterDementor_MIS);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Skull, Teeth_Normal, ItAr_Demaster);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1299;
};

func void Rtn_Start_1299()
{
	TA_Stand_Dementor	(08,00, 23,00, "DI_SCHWARZMAGIER");
	TA_Stand_Dementor	(23,00, 08,00, "DI_SCHWARZMAGIER");
};
