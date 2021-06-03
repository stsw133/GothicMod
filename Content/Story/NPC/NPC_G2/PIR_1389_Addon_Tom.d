///******************************************************************************************
instance PIR_1389_Addon_Tom (Npc_Default)
{
	/// ------ General ------
	name								=	"Tom";
	guild 								=	GIL_PIR;
	id 									=	1389;
	voice 								=	11;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_ElBastardo);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Normal26, 0, ITAR_PIR_L);
	Mdl_SetModelFatness	(self, 0.75);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1389;
};

func void Rtn_Start_1389()
{
	TA_Stand_WP	(09,00,21,00, "ADW_PIRATECAMP_BEACH_15");
	TA_Stand_WP	(21,00,09,00, "ADW_PIRATECAMP_BEACH_15");
};
