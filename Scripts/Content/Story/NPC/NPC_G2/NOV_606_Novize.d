///******************************************************************************************
instance NOV_606_Novize (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Novize;
	guild								=	GIL_NOV;
	id									=	606;
	voice								=	3;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Nov_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal08, Teeth_Normal, ItAr_NOV_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_606;
};

func void Rtn_Start_606()
{
	TA_Stomp_Herb		(08,00, 11,00, "NW_MONASTERY_WINEMAKER_04");
	TA_Pray_Innos_FP	(11,00, 12,00, "NW_MONASTERY_CHURCH_03");
	TA_Stomp_Herb		(12,00, 22,30, "NW_MONASTERY_WINEMAKER_04");
	TA_Sleep			(22,30, 08,00, "NW_MONASTERY_NOVICE03_04");
};
