///******************************************************************************************
instance PIR_1371_Addon_Hank (Npc_Default)
{
	/// ------ General ------
	name								=	"Hank";
	guild 								=	GIL_PIR;
	id 									=	1371;
	voice 								=	6;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Addon_PIR1hSword);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Lefty, 0, ITAR_PIR_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1370;
};

func void Rtn_Start_1371()
{
	TA_Smalltalk	(05,00,20,00, "ADW_PIRATECAMP_WATERHOLE_CAVE");
	TA_Smalltalk	(20,00,05,00, "ADW_PIRATECAMP_WATERHOLE_CAVE");
};
