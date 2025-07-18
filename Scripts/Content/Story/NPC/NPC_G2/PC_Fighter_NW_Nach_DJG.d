///******************************************************************************************
instance PC_Fighter_NW_nach_DJG (Npc_Default)
{
	/// ------ General ------
	name								=	"Gorn";
	guild								=	GIL_DJG;
	id									=	706;
	voice								=	12;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_2h_Sld_Axe);
	EquipItem (self, ItRw0_Crossbow_M_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fighter", Face_B_Gorn, Teeth_Normal, ItAr_DJG_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_706;
};

func void Rtn_Start_706()
{
	TA_Sit_Chair	(08,00, 23,00, "NW_BIGFARM_HOUSE_14");
	TA_Sit_Chair	(23,00, 08,00, "NW_BIGFARM_HOUSE_14");
};
func void Rtn_Tot_706()
{
	TA_Sit_Campfire	(08,00, 23,00, "TOT");
	TA_Sit_Campfire	(23,00, 08,00, "TOT");
};
func void Rtn_WAITFORSHIP_706()
{
	TA_Stand_Guarding	(08,00, 23,00, "NW_WAITFOR_SHIP_05");
	TA_Stand_Guarding	(23,00, 08,00, "NW_WAITFOR_SHIP_05");
};
func void Rtn_Ship_706()
{
	TA_Stand_Guarding	(06,00, 07,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(07,00, 07,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(07,10, 07,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(07,20, 07,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(07,30, 07,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(07,40, 07,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(07,50, 08,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(08,00, 08,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(08,10, 08,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(08,20, 08,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(08,30, 08,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(08,40, 08,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(08,50, 09,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(09,00, 09,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(09,10, 09,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(09,20, 09,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(09,30, 09,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(09,40, 09,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(09,50, 10,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(10,00, 10,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(10,10, 10,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(10,20, 10,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(10,30, 10,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(10,40, 10,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(10,50, 11,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(11,00, 11,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(11,10, 11,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(11,20, 11,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(11,30, 11,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(11,40, 11,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(11,50, 12,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(12,00, 12,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(12,10, 12,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(12,20, 12,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(12,30, 12,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(12,40, 12,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(12,50, 13,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(13,00, 13,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(13,10, 13,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(13,20, 13,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(13,30, 13,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(13,40, 13,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(13,50, 14,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(14,00, 14,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(14,10, 14,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(14,20, 14,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(14,30, 14,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(14,40, 14,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(14,50, 15,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(15,00, 15,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(15,10, 15,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(15,20, 15,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(15,30, 15,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(15,40, 15,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(15,50, 16,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(16,00, 16,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(16,10, 16,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(16,20, 16,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(16,30, 16,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(16,40, 16,50, "SHIP_DECK_03");
	TA_Stand_Guarding	(16,50, 17,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(17,00, 17,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(17,10, 17,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(17,20, 17,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(17,30, 17,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(17,40, 17,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(17,50, 18,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(18,00, 18,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(18,10, 18,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(18,20, 18,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(18,30, 18,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(18,40, 18,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(18,50, 19,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(19,00, 19,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(19,10, 19,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(19,20, 19,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(19,30, 19,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(19,40, 19,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(19,50, 20,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(20,00, 20,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(20,10, 20,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(20,20, 20,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(20,30, 20,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(20,40, 20,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(20,50, 21,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(21,00, 21,10, "SHIP_DECK_37");
	TA_Stand_Guarding	(21,10, 21,20, "SHIP_DECK_03");
	TA_Stand_Guarding	(21,20, 21,30, "SHIP_DECK_37");
	TA_Stand_Guarding	(21,30, 21,40, "SHIP_DECK_03");
	TA_Stand_Guarding	(21,40, 21,50, "SHIP_DECK_30");
	TA_Stand_Guarding	(21,50, 22,00, "SHIP_DECK_03");
	
	TA_Stand_Guarding	(22,00, 23,00, "SHIP_DECK_37");
	TA_Stand_Guarding	(23,00, 00,00, "SHIP_DECK_03");
	TA_Stand_Guarding	(00,00, 01,00, "SHIP_DECK_37");
	TA_Stand_Guarding	(01,00, 02,00, "SHIP_DECK_30");
	TA_Stand_Guarding	(02,00, 03,00, "SHIP_DECK_03");
	TA_Stand_Guarding	(03,00, 04,00, "SHIP_DECK_30");
	TA_Stand_Guarding	(04,00, 05,00, "SHIP_DECK_03");
	TA_Stand_Guarding	(05,00, 06,00, "SHIP_DECK_37");
};
