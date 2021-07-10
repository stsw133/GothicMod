///******************************************************************************************
instance VLK_4131_Engrom (Npc_Default)
{
	/// ------ General ------
	name								=	"Engrom";
	guild 								=	GIL_OUT;
	id 									=	4131;
	voice 								=	12;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Axe);
	EquipItem (self, ItRW_MIL_Crossbow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal47, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4131;
};

func void Rtn_Start_4131()
{
	TA_Sit_Campfire	(08,00,23,00, "SPAWN_TALL_PATH_BANDITOS2_03");
    TA_Sit_Campfire	(23,00,08,00, "SPAWN_TALL_PATH_BANDITOS2_03");
};
func void Rtn_Obsessed_4131()
{
	TA_Stand_ArmsCrossed	(08,00,23,00, "OW_SAWHUT_MOLERAT_MOVEMENT");
    TA_Stand_ArmsCrossed	(23,00,08,00, "OW_SAWHUT_MOLERAT_MOVEMENT");
};
