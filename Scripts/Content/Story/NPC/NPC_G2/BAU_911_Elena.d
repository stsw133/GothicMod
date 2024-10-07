///******************************************************************************************
instance BAU_911_Elena (Npc_Default)
{
	/// ------ General ------
	name								=	"Elena";
	guild								=	GIL_BAU;
	id									=	911;
	voice								=	16;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 25);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe", FaceBabe_N_GreyCloth, Teeth_Pretty, ItAr_Babe_BAU_H_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_911;
};

func void Rtn_Start_911()
{
	TA_Stand_ArmsCrossed	(07,30, 20,30, "NW_BIGFARM_STABLE_OUT_04");
	TA_Sit_Throne			(20,30, 07,30, "NW_BIGFARM_HOUSE_UP1_SESSEL");
};
