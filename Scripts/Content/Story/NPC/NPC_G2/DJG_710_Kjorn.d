///******************************************************************************************
instance DJG_710_Kjorn (Npc_Default)
{
	/// ------ General ------
	name								=	"Kjorn";
	guild								=	GIL_DJG;
	id									=	710;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 65);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Sld_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Normal02, Teeth_Normal, ItAr_DJG_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_710;
};

func void Rtn_PreStart_710()
{
	TA_Smalltalk	(08,00, 23,00, "OW_PATH_1_5_3A");
	TA_Smalltalk	(23,00, 08,00, "OW_PATH_1_5_3A");
};
func void Rtn_Start_710()
{
	TA_Sit_Bench	(08,00, 23,00, "OW_DJG_VORPOSTEN_01");
	TA_Sit_Bench	(23,00, 08,00, "OW_DJG_VORPOSTEN_01");
};
