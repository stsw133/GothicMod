///******************************************************************************************
instance NONE_ADDON_111_Quarhodron (Npc_Default)
{
	/// ------ General ------
	name								=	"Quarhodron";
	guild 								=	GIL_NONE;
	id 									=	111;
	voice 								=	11;
	flags       						=	NPC_FLAG_GHOST|NPC_FLAG_IMMORTAL;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ AI vars ------
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;
	aivar[AIV_NoFightParker] 			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Psionic", Face_Corristo, 0, ITAR_JARKHENDAR);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_111;
};

func void Rtn_Start_111()
{
	TA_Ghost	(08,00,23,00, "ADW_ANCIENTGHOST");
    TA_Ghost	(23,00,08,00, "ADW_ANCIENTGHOST");
};
func void Rtn_TOT_111()
{
	TA_Ghost	(08,00,23,00, "TOT");
	TA_Ghost	(23,00,08,00, "TOT");
};
