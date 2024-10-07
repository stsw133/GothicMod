///******************************************************************************************
instance BAU_910_Maria (Npc_Default)
{
	/// ------ General ------
	name								=	"Maria";
	guild								=	GIL_BAU;
	id									=	910;
	voice								=	17;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 10);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe8", FaceBabe_N_MidBauBlonde, Teeth_Pretty, ItAr_Babe_BAU_H_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_910;
};

func void Rtn_Start_910()
{
	TA_Sit_Throne	(08,00, 22,00, "NW_BIGFARM_HOUSE_UP1_SESSEL");
	TA_Sleep		(22,00, 08,00, "NW_BIGFARM_HOUSE_UP1_04");
};
