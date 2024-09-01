///******************************************************************************************
instance VLK_439_Vatras_DI (Npc_Default)
{
	/// ------ General ------
	name								=	"Vatras";
	guild								=	GIL_KDW;
	id									=	4390;
	voice								=	5;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_PartyMember]				=	true;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Psionic", Face_B_Saturas, Teeth_Normal, ItAr_MAG_A);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4390;
};

func void Rtn_Start_4390()
{
	TA_Read_Bookstand	(08,00, 23,00, "SHIP_IN_22");
	TA_Sleep			(23,00, 08,00, "SHIP_IN_04");
};
