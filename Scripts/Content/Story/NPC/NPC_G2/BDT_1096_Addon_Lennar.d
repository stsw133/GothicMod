///******************************************************************************************
instance BDT_1096_Addon_Lennar (Npc_Default)
{
	/// ------ General ------
	name								=	"Lennar";
	guild								=	GIL_BDT;
	id									=	1096;
	voice								=	1;
	npctype								=	NPCTYPE_BL_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_Nagelknueppel);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal20, Teeth_Normal, ItAr_Prisoner_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1096;
};

func void Rtn_Start_1096()
{
	TA_Stand_Drinking	(01,50, 19,30, "BL_DOWN_RING_03");
	TA_Roast_Scavenger	(19,30, 01,50, "BL_DOWN_RING_ROAST");
};
func void Rtn_Ruhe_1096()
{
	TA_Stand_Drinking	(10,00, 20,00, "ADW_MINE_22");
	TA_Stand_Drinking	(20,00, 10,00, "ADW_MINE_22");
};
func void Rtn_Mine_1096()
{
	TA_Pick_Ore	(10,00, 20,00, "ADW_MINE_PICK_09");
	TA_Pick_Ore	(20,00, 10,00, "ADW_MINE_PICK_09");
};
