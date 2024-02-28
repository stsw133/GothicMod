///******************************************************************************************
instance VLK_4100_Brutus (Npc_Default)
{
	/// ------ General ------
	name								=	"Brutus";
	guild 								=	GIL_MIL;
	id 									=	4100;
	voice 								=	6;
	npctype								=	NPCTYPE_OCMAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy] 				=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Vlk_Dagger);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_FatBald", Face_Normal00, 0, ITAR_MIL_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4100;
};

func void Rtn_Start_4100()
{
	TA_Smith_Sharp	(08,00,23,00, "OC_FOLTER_SHARP");
    TA_Smith_Sharp	(23,00,08,00, "OC_FOLTER_SHARP");
};
func void Rtn_Meatbugs_4100()
{
	TA_Guard_Passage	(08,00,23,00, "OC_BRUTUS_MEATBUGS");
    TA_Guard_Passage	(23,00,08,00, "OC_BRUTUS_MEATBUGS");
};
