///******************************************************************************************
instance SLD_816_Fester (Npc_Default)
{
	/// ------ General ------
	name								=	"Fester";
	guild 								=	GIL_SLD;
	id 									=	816;
	voice 								=	8;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);
	B_AddFightSkill (self, NPC_TALENT_BOW, 40);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Axe);
	EquipItem (self, ItRw_Sld_Bow);
	CreateInvItems (self, itrw_arrow, 10);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal32, 0, ITAR_SLD_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_816;
};

func void Rtn_Start_816()
{
	TA_Practice_Sword	(05,00,06,00, "NW_BIGFARM_ALLEE_04");
	TA_Practice_Sword	(06,00,07,00, "NW_BIGFARM_ALLEE_02");
	TA_Practice_Sword	(07,00,08,00, "NW_BIGFARM_ALLEE_04");
	TA_Practice_Sword	(08,00,09,00, "NW_BIGFARM_ALLEE_02");
	TA_Practice_Sword	(09,00,10,00, "NW_BIGFARM_ALLEE_04");
	TA_Practice_Sword	(10,00,11,00, "NW_BIGFARM_ALLEE_02");
	TA_Practice_Sword	(11,00,12,00, "NW_BIGFARM_ALLEE_04");
	TA_Practice_Sword	(12,00,13,00, "NW_BIGFARM_ALLEE_02");
	TA_Practice_Sword	(13,00,14,00, "NW_BIGFARM_ALLEE_04");
	TA_Practice_Sword	(14,00,15,00, "NW_BIGFARM_ALLEE_02");
	TA_Practice_Sword	(15,00,16,00, "NW_BIGFARM_ALLEE_04");
	TA_Practice_Sword	(16,00,17,00, "NW_BIGFARM_ALLEE_02");
	TA_Practice_Sword	(17,00,18,00, "NW_BIGFARM_ALLEE_04");
	TA_Practice_Sword	(18,00,19,00, "NW_BIGFARM_ALLEE_02");
	TA_Practice_Sword	(19,00,20,00, "NW_BIGFARM_ALLEE_04");

	TA_Sit_Campfire		(20,00,06,00, "NW_BIGFARM_VORPOSTEN1_01");
};
func void Rtn_Guide_816()
{
	TA_Guide_Player	(08,00,20,00, "NW_BIGFARM_FELDREUBER4");
    TA_Guide_Player	(20,00,08,00, "NW_BIGFARM_FELDREUBER4");
};
