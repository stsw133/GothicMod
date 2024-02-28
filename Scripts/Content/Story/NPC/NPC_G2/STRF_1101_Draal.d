///******************************************************************************************
instance STRF_1101_Draal (Npc_Default)
{
	/// ------ General ------
	name								=	"Draal";
	guild 								=	GIL_STRF;
	id 									=	1101;
	voice 								=	3;
	npctype								=	NPCTYPE_OCMAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, FightTalent_Weak+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+0, BodySkin_P, "Hum_Head_FatBald", Face_Normal05, 0, -1);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1101;
};

func void Rtn_Start_1101()
{
	TA_Sit_Campfire	(08,00,23,00, "OC_PRISON_CELL_02_SIT_GROUND");
    TA_Sit_Campfire	(23,00,08,00, "OC_PRISON_CELL_02_SIT_GROUND");
};
