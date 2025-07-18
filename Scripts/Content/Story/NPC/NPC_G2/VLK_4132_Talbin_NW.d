///******************************************************************************************
instance VLK_4132_Talbin_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Talbin";
	guild								=	GIL_VLK;
	id									=	4132;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Mace);
	EquipItem (self, ItRw0_Bow_M_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Bullit, Teeth_Normal, ItAr_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_4132;
};

func void Rtn_PreStart_4132()
{
	TA_Stand_Eating	(08,00, 23,00, "LEVELCHANGE");
	TA_Stand_Eating	(23,00, 08,00, "LEVELCHANGE");
};
func void Rtn_Farm_4132()
{
	TA_Stand_Eating	(08,00, 23,00, "NW_FARM2_OUT_07");
	TA_Stand_Eating	(23,00, 08,00, "NW_FARM2_OUT_07");
};
