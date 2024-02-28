///******************************************************************************************
instance PAL_250_Garond (Npc_Default)
{
	/// ------ General ------
	name								=	"Garond";
	guild 								=	GIL_PAL;
	id 									=	250;
	voice 								=	10;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_OCMAIN;

	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2h_Pal_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Raven, 0, ITAR_PAL_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_250;
};

func void Rtn_PreStart_250()
{
	TA_Sit_Throne	(08,00,21,00, "OC_EBR_HALL_THRONE");
	TA_Sit_Throne	(21,00,08,00, "OC_EBR_HALL_THRONE");
};
func void Rtn_Start_250()
{
	TA_Sit_Throne	(08,00,21,00, "OC_EBR_HALL_THRONE");
	TA_Sleep		(21,00,08,00, "OC_EBR_ROOM_04_SLEEP");
};
