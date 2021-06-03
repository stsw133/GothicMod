///******************************************************************************************
instance DJG_712_Hokurn (Npc_Default)
{
	/// ------ General ------
	name								=	"Hokurn";
	guild 								=	GIL_DJG;
	id 									=	712;
	voice 								=	1;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 40);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Crossbow_M_01);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_Bald", Face_Normal05, 0, ITAR_DJG_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_712;
};

func void Rtn_PreStart_712()
{
	TA_Smalltalk	(08,00,23,00, "OW_DJG_STARTCAMP_01");
    TA_Smalltalk	(23,00,08,00, "OW_DJG_STARTCAMP_01");
};
func void Rtn_Start_712()
{
	TA_Smalltalk	(08,00,23,00, "SPAWN_OW_BLACKGOBBO_A1");
    TA_Smalltalk	(23,00,08,00, "SPAWN_OW_BLACKGOBBO_A1");
};
