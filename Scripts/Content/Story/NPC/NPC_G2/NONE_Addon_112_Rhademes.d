///******************************************************************************************
instance NONE_ADDON_112_Rhademes (Npc_Default)
{
	/// ------ General ------
	name								=	"Rhademes";
	guild								=	GIL_NONE;
	id									=	112;
	voice								=	3;
	flags								=	NPC_FLAG_GHOST | NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_NoFightParker]			=	true;
	
//	protection[PROT_POINT]				=	99999999;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Ske_Head", 0, Teeth_Normal, ItAr_Jarkhendar);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_112;
};

func void Rtn_Start_112()
{
	TA_GhostWusel	(08,00, 20,00, "ADW_ADANOSTEMPEL_RHADEMES_02");
	TA_GhostWusel	(20,00, 08,00, "ADW_ADANOSTEMPEL_RHADEMES_02");
};
func void Rtn_TOT_112()
{
	TA_Ghost	(08,00, 20,00, "TOT");
	TA_Ghost	(20,00, 08,00, "TOT");
};
