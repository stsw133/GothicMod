///******************************************************************************************
instance DJG_735_ToterDrachenjaeger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_ToterDrachenjaeger;
	guild 								=	GIL_DJG;
	id 									=	735;
	voice 								=	6;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Strong-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_SLD_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Psionic", Face_Richter, 0, ITAR_DJG_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_735;
};

func void Rtn_Start_735()
{
	TA_Sit_Bench	(08,00,23,00, "OW_DRAGONSWAMP_023");
    TA_Sit_Bench	(23,00,08,00, "OW_DRAGONSWAMP_023");
};
