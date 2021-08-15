///******************************************************************************************
instance DMT_1200_Dementor (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Dementor;
	guild 								=	GIL_DMT;
	id 									=	1200;
	voice 								=	19;
	npctype								=	NPCTYPE_MAIN;
	bodyStateInterruptableOverride		=	true; 

	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	aivar[AIV_EnemyOverride]			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Master-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_MadPsi, 0, ITAR_Dementor);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1200;
};

func void Rtn_Start_1200()
{
	TA_Stand_Dementor	(08,00,23,00, "NW_TROLLAREA_PATH_47");
    TA_Stand_Dementor	(23,00,08,00, "NW_TROLLAREA_PATH_47");
};
