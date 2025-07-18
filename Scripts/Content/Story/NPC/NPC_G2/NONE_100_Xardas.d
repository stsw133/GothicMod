///******************************************************************************************
instance NONE_100_Xardas (Npc_Default)
{
	/// ------ General ------
	name								=	"Xardas";
	guild								=	GIL_NONE;
	id									=	100;
	voice								=	14;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_N_Xardas, Teeth_Normal, ItAr_Mag_B);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_100;
};

func void Rtn_PreStart_100()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "NW_XARDAS_START");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "NW_XARDAS_START");
};
func void Rtn_Start_100()
{
	TA_Read_Bookstand	(08,00, 23,00, "NW_XARDAS_TOWER_IN1_28");
	TA_Sit_Throne		(23,00, 08,00, "NW_XARDAS_TOWER_IN1_32");
};
func void Rtn_RitualInnosEyeRepair_100()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "NW_TROLLAREA_RITUAL_01");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "NW_TROLLAREA_RITUAL_01");
};
func void Rtn_RitualInnosEye_100()
{
	TA_Circle	(08,00, 23,00, "NW_TROLLAREA_RITUAL_01");
	TA_Circle	(23,00, 08,00, "NW_TROLLAREA_RITUAL_01");
};
func void Rtn_Tot_100()
{
	TA_Circle	(08,00, 23,00, "TOT");
	TA_Circle	(23,00, 08,00, "TOT");
};
