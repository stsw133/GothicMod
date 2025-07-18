///******************************************************************************************
instance BAU_942_Randolph (Npc_Default)
{
	/// ------ General ------
	name								=	"Randolph";
	guild								=	GIL_OUT;
	id									=	942;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 20);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_Normal_Kharim, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_preStart_942;
};

func void Rtn_preStart_942()
{
	TA_Stand_Guarding	(08,00, 22,00, "NW_FARM2_FIELD_04_B");
	TA_Stand_Guarding	(22,00, 08,00, "NW_FARM2_FIELD_04_B");
};
func void Rtn_Start_942()
{
	TA_Pick_FP		(05,00, 21,00, "NW_FARM2_FIELD_04");
	TA_Stand_Eating	(21,00, 05,00, "NW_FARM2_OUT_07");
};
func void Rtn_Wettkampf_942()
{
	TA_Stand_Drinking	(08,00, 22,00, "NW_TAVERNE_RUKHAR");
	TA_Stand_Drinking	(22,00, 08,00, "NW_TAVERNE_RUKHAR");
};
