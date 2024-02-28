///******************************************************************************************
instance NOV_650_ToterNovize (Npc_Default)
{
	/// ------ General ------
	name								=	Name_ToterNovize;
	guild 								=	GIL_NOV;
	id 									=	650;
	voice 								=	10;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Fingers, 0, ITAR_Nov_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_650;
};

func void Rtn_Start_650()
{
	TA_Sleep	(08,00,22,00, "NW_TROLLAREA_PATH_37");
    TA_Sleep	(22,00,08,00, "NW_TROLLAREA_PATH_37");
};
