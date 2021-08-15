///******************************************************************************************
instance VLK_4130_Talbin (Npc_Default)
{
	/// ------ General ------
	name								=	"Talbin";
	guild 								=	GIL_OUT;
	id 									=	4130;
	voice 								=	7;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	EquipItem (self, ItRW_SLD_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Bullit, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4130;
};

func void Rtn_Start_4130()
{
	TA_Sit_Campfire	(08,00,23,00, "SPAWN_TALL_PATH_BANDITOS2_03");
    TA_Sit_Campfire	(23,00,08,00, "SPAWN_TALL_PATH_BANDITOS2_03");
};
func void Rtn_FleePass_4130()
{
	TA_RunToWP	(08,00,23,00, "START");
    TA_RunToWP	(23,00,08,00, "START");
};
func void Rtn_IntoPass_4130()
{
	TA_Stand_Eating	(08,00,23,00, "TOT");
    TA_Stand_Eating	(23,00,08,00, "TOT");
};
