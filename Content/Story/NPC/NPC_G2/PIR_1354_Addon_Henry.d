///******************************************************************************************
instance PIR_1354_Addon_Henry (Npc_Default)
{
	/// ------ General ------
	name								=	"Henry";
	guild 								=	GIL_PIR;
	id 									=	1354;
	voice 								=	4;												
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_NewsOverride]				=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Krummschwert);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_P, "Hum_Head_FatBald", Face_Normal06, 0, ITAR_PIR_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1354;
};

func void Rtn_Start_1354()
{
	TA_Guard_Passage	(05,00,20,00, "ADW_PIRATECAMP_WAY_04");
	TA_Guard_Passage	(20,00,05,00, "ADW_PIRATECAMP_WAY_04");
};
