///******************************************************************************************
instance SLD_807_Bullco (Npc_Default)
{
	/// ------ General ------
	name								=	"Bullko";
	guild 								=	GIL_SLD;
	id 									=	807;
	voice 								=	6;
	npctype								=	NPCTYPE_MAIN;

	/// ----- AI vars -----
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Theft|IGNORE_Sheepkiller;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Axe);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal09, 0, ITAR_SLD_M);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_807;
};

func void Rtn_Start_807()
{
	TA_Sit_Chair	(08,00,22,00, "NW_BIGFARM_KITCHEN_SYLVIO");
    TA_Sit_Chair	(22,00,08,00, "NW_BIGFARM_KITCHEN_SYLVIO");
};
func void Rtn_Pee_807()
{
	TA_Pee			(08,00,08,15, "NW_BIGFARM_TREE");
	TA_Sit_Chair	(08,15,10,00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee			(10,00,10,15, "NW_BIGFARM_TREE");
	TA_Sit_Chair	(10,15,12,00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee			(12,00,12,15, "NW_BIGFARM_TREE");
	TA_Sit_Chair	(12,15,14,00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee			(14,00,14,15, "NW_BIGFARM_TREE");
	TA_Sit_Chair	(14,15,16,00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee			(16,00,16,15, "NW_BIGFARM_TREE");
	TA_Sit_Chair	(16,15,18,00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee			(18,00,18,15, "NW_BIGFARM_TREE");
	TA_Sit_Chair	(18,15,20,00, "NW_BIGFARM_KITCHEN_SYLVIO");
	TA_Pee			(20,00,20,15, "NW_BIGFARM_TREE");
	TA_Sit_Chair	(20,15,08,00, "NW_BIGFARM_KITCHEN_SYLVIO");
};
func void Rtn_Tot_807()
{
	TA_Sleep	(08,00,23,00, "TOT");
    TA_Sleep	(23,00,08,00, "TOT");
};
