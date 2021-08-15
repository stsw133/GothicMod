///******************************************************************************************
instance BAU_982_Grimbald (Npc_Default)
{
	/// ------ General ------
	name								=	"Grimbald";
	guild 								=	GIL_OUT;
	id 									=	982;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Strong);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_SLD_Sword);
	EquipItem (self, ItRw_Sld_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Psionic", Face_Normal04, 0, ITAR_LEATHER_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_982;
};

func void Rtn_Start_982()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_TROLLAREA_PATH_79");
    TA_Stand_Guarding	(23,00,08,00, "NW_TROLLAREA_PATH_79");
};
func void Rtn_Jagd_982()
{
	TA_RunToWP	(08,00,23,00, "NW_TROLLAREA_PATH_80");
    TA_RunToWP	(23,00,08,00, "NW_TROLLAREA_PATH_80");
};
func void Rtn_JagdOver_982()
{
	TA_Stand_Guarding	(08,00,23,00, "NW_TROLLAREA_PATH_79");
    TA_Stand_Guarding	(23,00,08,00, "NW_TROLLAREA_PATH_79");
};
