///******************************************************************************************
instance BAU_900_Onar (Npc_Default)
{
	/// ------ General ------
	name								=	"Onar";
	guild								=	GIL_BAU;
	id									=	900;
	voice								=	14;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Inventory ------
	EquipItem (self, ItMw0_1h_Bau_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_OldBald_Jeremiah, Teeth_Normal, ItAr_VLK_H_12);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_900;
};

func void Rtn_Start_900()
{
	TA_Sit_Throne	(09,00, 21,00, "NW_BIGFARM_HOUSE_ONAR_SIT");
	TA_Sleep		(21,00, 09,00, "NW_BIGFARM_HOUSE_UP1_04");
};
