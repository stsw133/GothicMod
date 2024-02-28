///******************************************************************************************
instance DJG_711_Godar (Npc_Default)
{
	/// ------ General ------
	name								=	"Godar";
	guild 								=	GIL_DJG;
	id 									=	711;
	voice 								=	13;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal21, 0, ITAR_DJG_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_711;
};

func void Rtn_PreStart_711()
{
	TA_Smalltalk	(08,00,23,00, "OW_PATH_1_5_3A");
    TA_Smalltalk	(23,00,08,00, "OW_PATH_1_5_3A");
};
func void Rtn_Start_711()
{
	TA_Roast_Scavenger	(08,00,23,00, "OW_DJG_VORPOSTEN_01");
    TA_Roast_Scavenger	(23,00,08,00, "OW_DJG_VORPOSTEN_01");
};
