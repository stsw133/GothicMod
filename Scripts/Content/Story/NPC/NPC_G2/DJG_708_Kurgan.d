///******************************************************************************************
instance DJG_708_Kurgan (Npc_Default)
{
	/// ------ General ------
	name								=	"Kurgan";
	guild								=	GIL_DJG;
	id									=	708;
	voice								=	1;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_Crossbow_M_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_ImportantGrey, Teeth_Normal, ItAr_DJG_H);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_708;
};

func void Rtn_PreStart_708()
{
	TA_Stand_Guarding	(08,00, 23,00, "OW_PATH_1_5_4");
	TA_Stand_Guarding	(23,00, 08,00, "OW_PATH_1_5_4");
};
func void Rtn_Start_708()
{
	TA_Stand_Guarding	(08,00, 23,00, "OW_MOVEMENT_LURKER_NEARBGOBBO03");
	TA_Stand_Guarding	(23,00, 08,00, "OW_MOVEMENT_LURKER_NEARBGOBBO03");
};
