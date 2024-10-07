///******************************************************************************************
instance VLK_447_Cassia (Npc_Default)
{
	/// ------ General ------
	name								=	"Cassia";
	guild								=	GIL_OUT;
	id									=	447;
	voice								=	16;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_DropDeadAndKill]			=	true;
	aivar[AIV_EnemyOverride]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 90);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Meisterdegen);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItKe_Thiefguildkey_Hotel_MIS);
	CreateInvItem (self, ItKe_ThiefTreasure);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe", FaceBabe_N_Velaya, Teeth_Pretty, ItAr_Babe_VLK_L_02);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_447;
};

func void Rtn_Start_447()
{
	TA_Read_Bookstand	(07,00, 23,00, "NW_CITY_KANAL_ROOM_05_02");
	TA_Sleep			(23,00, 07,00, "NW_CITY_KANAL_ROOM_05_BED_01");
};
