///******************************************************************************************
instance NONE_100_Xardas (Npc_Default)
{
	/// ------ General ------
	name								=	"Xardas";
	guild 								=	GIL_NONE;
	id 									=	100;
	voice 								=	14;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_NEC;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_ToughGuyNewsOverride]		=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Psionic", Face_Xardas, 0, ITAR_Mag_B);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_100;
};

func void Rtn_PreStart_100()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "NW_XARDAS_START");
	TA_Stand_ArmsCrossed	(23,00,08,00, "NW_XARDAS_START");
};
func void Rtn_Start_100()
{
	TA_Read_Bookstand	(08,00,23,00, "NW_XARDAS_TOWER_IN1_28");
    TA_Sit_Throne		(23,00,08,00, "NW_XARDAS_TOWER_IN1_32");
};
func void Rtn_RitualInnosEyeRepair_100()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "NW_TROLLAREA_RITUAL_01");
    TA_Stand_ArmsCrossed	(23,00,08,00, "NW_TROLLAREA_RITUAL_01");
};
func void Rtn_RitualInnosEye_100()
{
	TA_Circle	(08,00,23,00, "NW_TROLLAREA_RITUAL_01");
    TA_Circle	(23,00,08,00, "NW_TROLLAREA_RITUAL_01");
};
func void Rtn_Tot_100()
{
	TA_Circle	(08,00,23,00, "TOT");
    TA_Circle	(23,00,08,00, "TOT");
};
